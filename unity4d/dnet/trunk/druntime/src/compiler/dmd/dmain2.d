/*
 * Placed into the Public Domain.
 * written by Walter Bright
 * http://www.digitalmars.com
 */

/*
 *  Modified by Sean Kelly for use with the D Runtime Project
 */

module rt.dmain2;

private
{
    import rt.memory;
    import rt.util.console;
    import core.stdc.stddef;
    import core.stdc.stdlib;
    import core.stdc.string;
}

version (Windows)
{
    private import core.stdc.wchar_;

    extern (Windows) alias int function() FARPROC;
    extern (Windows) FARPROC    GetProcAddress(void*, in char*);
    extern (Windows) void*      LoadLibraryA(in char*);
    extern (Windows) int        FreeLibrary(void*);
    extern (Windows) void*      LocalFree(void*);
    extern (Windows) wchar_t*   GetCommandLineW();
    extern (Windows) wchar_t**  CommandLineToArgvW(wchar_t*, int*);
    extern (Windows) export int WideCharToMultiByte(uint, uint, wchar_t*, int, char*, int, char*, int);
    pragma(lib, "shell32.lib"); // needed for CommandLineToArgvW
}

extern (C) void _STI_monitor_staticctor();
extern (C) void _STD_monitor_staticdtor();
extern (C) void _STI_critical_init();
extern (C) void _STD_critical_term();
extern (C) void gc_init();
extern (C) void gc_term();
extern (C) void _minit();
extern (C) void _moduleCtor();
extern (C) void _moduleDtor();
extern (C) void thread_joinAll();

version (OSX)
{
    // The bottom of the stack
    extern (C) void* __osx_stack_end = cast(void*)0xC0000000;
}

/***********************************
 * These are a temporary means of providing a GC hook for DLL use.  They may be
 * replaced with some other similar functionality later.
 */
extern (C)
{
    void* gc_getProxy();
    void  gc_setProxy(void* p);
    void  gc_clrProxy();

    alias void* function()      gcGetFn;
    alias void  function(void*) gcSetFn;
    alias void  function()      gcClrFn;
}

extern (C) void* rt_loadLibrary(in char[] name)
{
    version (Windows)
    {
        char[260] temp = void;
        temp[0 .. name.length] = name[];
        temp[name.length] = cast(char) 0;
        void* ptr = LoadLibraryA(temp.ptr);
        if (ptr is null)
            return ptr;
        gcSetFn gcSet = cast(gcSetFn) GetProcAddress(ptr, "gc_setProxy");
        if (gcSet !is null)
            gcSet(gc_getProxy());
        return ptr;

    }
    else version (Posix)
    {
        throw new Exception("rt_loadLibrary not yet implemented on Posix.");
    }
}

extern (C) bool rt_unloadLibrary(void* ptr)
{
    version (Windows)
    {
        gcClrFn gcClr  = cast(gcClrFn) GetProcAddress(ptr, "gc_clrProxy");
        if (gcClr !is null)
            gcClr();
        return FreeLibrary(ptr) != 0;
    }
    else version (Posix)
    {
        throw new Exception("rt_unloadLibrary not yet implemented on Posix.");
    }
}

/***********************************
 * These functions must be defined for any D program linked
 * against this library.
 */
extern (C) void onAssertError(string file, size_t line);
extern (C) void onAssertErrorMsg(string file, size_t line, string msg);
extern (C) void onRangeError(string file, size_t line);
extern (C) void onHiddenFuncError(Object o);
extern (C) void onSwitchError(string file, size_t line);
extern (C) bool runModuleUnitTests();

// this function is called from the utf module
//extern (C) void onUnicodeError(string msg, size_t idx);

/***********************************
 * These are internal callbacks for various language errors.
 */
extern (C) void _d_assert(string file, uint line)
{
    onAssertError(file, line);
}

extern (C) static void _d_assert_msg(string msg, string file, uint line)
{
    onAssertErrorMsg(file, line, msg);
}

extern (C) void _d_array_bounds(string file, uint line)
{
    onRangeError(file, line);
}

extern (C) void _d_switch_error(string file, uint line)
{
    onSwitchError(file, line);
}

extern (C) void _d_hidden_func()
{
    Object o;
    asm
    {
        mov o, EAX;
    }
    onHiddenFuncError(o);
}

bool _d_isHalting = false;

extern (C) bool rt_isHalting()
{
    return _d_isHalting;
}

extern (C) bool rt_trapExceptions = true;

void _d_criticalInit()
{
    version (Posix)
    {
        _STI_monitor_staticctor();
        _STI_critical_init();
    }
}

alias void delegate(Throwable) ExceptionHandler;

extern (C) bool rt_init(ExceptionHandler dg = null)
{
    _d_criticalInit();

    try
    {
        gc_init();
        initStaticDataGC();
        version (Windows)
            _minit();
        _moduleCtor();
        return true;
    }
    catch (Throwable e)
    {
        if (dg)
            dg(e);
    }
    catch
    {

    }
    _d_criticalTerm();
    return false;
}

void _d_criticalTerm()
{
    version (Posix)
    {
        _STD_critical_term();
        _STD_monitor_staticdtor();
    }
}

extern (C) bool rt_term(ExceptionHandler dg = null)
{
    try
    {
        thread_joinAll();
        _d_isHalting = true;
        _moduleDtor();
        gc_term();
        return true;
    }
    catch (Throwable e)
    {
        if (dg)
            dg(e);
    }
    catch
    {

    }
    finally
    {
        _d_criticalTerm();
    }
    return false;
}

/***********************************
 * The D main() function supplied by the user's program
 */
int main(char[][] args);

/***********************************
 * Substitutes for the C main() function.
 * It's purpose is to wrap the call to the D main()
 * function and catch any unhandled exceptions.
 */

extern (C) int main(int argc, char **argv)
{
    char[][] args;
    int result;

    version (OSX)
    {   /* OSX does not provide a way to get at the top of the
         * stack, except for the magic value 0xC0000000.
         * But as far as the gc is concerned, argv is at the top
         * of the main thread's stack, so save the address of that.
         */
        __osx_stack_end = cast(void*)&argv;
    }

    version (Posix)
    {
        _STI_monitor_staticctor();
        _STI_critical_init();
    }

    version (Windows)
    {
        wchar_t*  wcbuf = GetCommandLineW();
        size_t    wclen = wcslen(wcbuf);
        int       wargc = 0;
        wchar_t** wargs = CommandLineToArgvW(wcbuf, &wargc);
        assert(wargc == argc);

        char*     cargp = null;
        size_t    cargl = WideCharToMultiByte(65001, 0, wcbuf, wclen, null, 0, null, 0);

        cargp = cast(char*) alloca(cargl);
        args  = ((cast(char[]*) alloca(wargc * (char[]).sizeof)))[0 .. wargc];

        for (size_t i = 0, p = 0; i < wargc; i++)
        {
            int wlen = wcslen(wargs[i]);
            int clen = WideCharToMultiByte(65001, 0, &wargs[i][0], wlen, null, 0, null, 0);
            args[i]  = cargp[p .. p+clen];
            p += clen; assert(p <= cargl);
            WideCharToMultiByte(65001, 0, &wargs[i][0], wlen, &args[i][0], clen, null, 0);
        }
        LocalFree(wargs);
        wargs = null;
        wargc = 0;
    }
    else version (Posix)
    {
        char[]* am = cast(char[]*) malloc(argc * (char[]).sizeof);
        scope(exit) free(am);

        for (size_t i = 0; i < argc; i++)
        {
            auto len = strlen(argv[i]);
            am[i] = argv[i][0 .. len];
        }
        args = am[0 .. argc];
    }

    bool trapExceptions = rt_trapExceptions;

    void tryExec(scope void delegate() dg)
    {

        if (trapExceptions)
        {
            try
            {
                dg();
            }
            catch (Throwable e)
            {
                while (e)
                {
                    if (e.file)
                    {
                        // fprintf(stderr, "%.*s(%u): %.*s\n", e.file, e.line, e.msg);
                        console (e.classinfo.name)("@")(e.file)("(")(e.line)("): ")(e.msg)("\n");
                    }
                    else
                    {
                        // fprintf(stderr, "%.*s\n", e.toString());
                        console (e.toString)("\n");
                    }
                    if (e.info)
                    {
                        console ("----------------\n");
                        foreach (t; e.info)
                            console (t)("\n");
                    }
                    if (e.next)
                        console ("\n");
                    e = e.next;
                }
                result = EXIT_FAILURE;
            }
            catch (Object o)
            {
                // fprintf(stderr, "%.*s\n", o.toString());
                console (o.toString)("\n");
                result = EXIT_FAILURE;
            }
        }
        else
        {
            dg();
        }
    }

    // NOTE: The lifetime of a process is much like the lifetime of an object:
    //       it is initialized, then used, then destroyed.  If initialization
    //       fails, the successive two steps are never reached.  However, if
    //       initialization succeeds, then cleanup will occur even if the use
    //       step fails in some way.  Here, the use phase consists of running
    //       the user's main function.  If main terminates with an exception,
    //       the exception is handled and then cleanup begins.  An exception
    //       thrown during cleanup, however, will abort the cleanup process.

    void runMain()
    {
        result = main(args);
    }

    void runAll()
    {
        gc_init();
        initStaticDataGC();
        version (Windows)
            _minit();
        _moduleCtor();
        if (runModuleUnitTests())
            tryExec(&runMain);
        thread_joinAll();
        _d_isHalting = true;
        _moduleDtor();
        gc_term();
    }

    tryExec(&runAll);

    version (Posix)
    {
        _STD_critical_term();
        _STD_monitor_staticdtor();
    }
    return result;
}
