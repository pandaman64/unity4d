// D import file generated from 'core\thread.d'
module core.thread;
version = StackGrowsDown;
class ThreadException : Exception
{
    this(string msg)
{
super(msg);
}
}
class FiberException : Exception
{
    this(string msg)
{
super(msg);
}
}
private
{
    extern (C) 
{
    void* rt_stackBottom();
}
    extern (C) 
{
    void* rt_stackTop();
}
    void* getStackBottom()
{
return rt_stackBottom();
}
    void* getStackTop();
}
version (Windows)
{
    private
{
    import core.stdc.stdint;
    import core.sys.windows.windows;
    const 
{
    DWORD TLS_OUT_OF_INDEXES = -1u;
}
    extern (Windows) 
{
    alias uint function(void*) btex_fptr;
}
    extern (C) 
{
    uintptr_t _beginthreadex(void*, uint, btex_fptr, void*, uint, uint*);
}
    version (DigitalMars)
{
    extern (C) 
{
    extern __thread 
{
    int _tlsstart;
}
    extern __thread 
{
    int _tlsend;
}
}
}
else
{
    int _tlsstart;
    alias _tlsstart _tlsend;
}
    extern (Windows) 
{
    uint thread_entryPoint(void* arg);
}
    HANDLE GetCurrentThreadHandle()
{
const uint DUPLICATE_SAME_ACCESS = 2;
HANDLE curr = GetCurrentThread(),proc = GetCurrentProcess(),hndl;
DuplicateHandle(proc,curr,proc,&hndl,0,TRUE,DUPLICATE_SAME_ACCESS);
return hndl;
}
}
}
else
{
    version (Posix)
{
    private
{
    import core.sys.posix.semaphore;
    import core.sys.posix.pthread;
    import core.sys.posix.signal;
    import core.sys.posix.time;
    import core.stdc.errno;
    extern (C) 
{
    int getErrno();
}
    version (OSX)
{
    import core.sys.osx.mach.thread_act;
    extern (C) 
{
    mach_port_t pthread_mach_thread_np(pthread_t);
}
}
    version (GNU)
{
    import gcc.builtins;
}
    version (DigitalMars)
{
    version (linux)
{
    extern (C) 
{
    extern __thread 
{
    int _tlsstart;
}
    extern __thread 
{
    int _tlsend;
}
}
}
else
{
    int _tlsstart;
    alias _tlsstart _tlsend;
}
}
else
{
    int _tlsstart;
    alias _tlsstart _tlsend;
}
    extern (C) 
{
    void* thread_entryPoint(void* arg);
}
    sem_t suspendCount;
    extern (C) 
{
    void thread_suspendHandler(int sig);
}
    extern (C) 
{
    void thread_resumeHandler(int sig)
in
{
assert(sig == SIGUSR2);
}
body
{
}
}
}
}
else
{
    static assert(false,"Unknown threading implementation.");
}
}
class Thread
{
    this(void function() fn, size_t sz = 0)
in
{
assert(fn);
}
body
{
m_fn = fn;
m_sz = sz;
m_call = Call.FN;
m_curr = &m_main;
}
    this(void delegate() dg, size_t sz = 0)
in
{
assert(dg);
}
body
{
m_dg = dg;
m_sz = sz;
m_call = Call.DG;
m_curr = &m_main;
}
        final 
{
    void start();
}
    final 
{
    Object join(bool rethrow = true);
}
    final 
{
    char[] name();
}
    final 
{
    void name(char[] val);
}
    final 
{
    bool isDaemon();
}
    final 
{
    void isDaemon(bool val);
}
    final 
{
    bool isRunning();
}
    static const 
{
    int PRIORITY_MIN;
}
    static const 
{
    int PRIORITY_MAX;
}
    final 
{
    int priority();
}
    final 
{
    void priority(int val);
}
    static 
{
    void sleep(long period);
}
    static 
{
    void yield();
}
    static 
{
    Thread getThis();
}
    static 
{
    Thread[] getAll();
}
    static 
{
    int opApply(int delegate(ref Thread) dg);
}
    static const 
{
    uint LOCAL_MAX = 64;
}
    static 
{
    uint createLocal();
}
    static 
{
    void deleteLocal(uint key);
}
    static 
{
    void* getLocal(uint key)
{
return getThis().m_local[key];
}
}
    static 
{
    void* setLocal(uint key, void* val)
{
return getThis().m_local[key] = val;
}
}
    static this();
    private
{
    this()
{
m_call = Call.NO;
m_curr = &m_main;
void* pstart = cast(void*)&_tlsstart;
void* pend = cast(void*)&_tlsend;
m_tls = pstart[0..pend - pstart];
}
    final 
{
    void run();
}
    private
{
    enum Call 
{
NO,
FN,
DG,
}
    version (Windows)
{
    alias uint TLSKey;
    alias uint ThreadAddr;
}
else
{
    version (Posix)
{
    alias pthread_key_t TLSKey;
    alias pthread_t ThreadAddr;
}
}
    static 
{
    bool[LOCAL_MAX] sm_local;
}
    static 
{
    TLSKey sm_this;
}
    void*[LOCAL_MAX] m_local;
    version (Windows)
{
    HANDLE m_hndl;
}
else
{
    version (OSX)
{
    mach_port_t m_tmach;
}
}
    ThreadAddr m_addr;
    Call m_call;
    char[] m_name;
    union
{
void function() m_fn;
void delegate() m_dg;
}
    size_t m_sz;
    version (Posix)
{
    bool m_isRunning;
}
    bool m_isDaemon;
    Object m_unhandled;
    private
{
    static 
{
    void setThis(Thread t);
}
    private
{
    final 
{
    void pushContext(Context* c)
in
{
assert(!c.within);
}
body
{
c.within = m_curr;
m_curr = c;
}
}
    final 
{
    void popContext()
in
{
assert(m_curr && m_curr.within);
}
body
{
Context* c = m_curr;
m_curr = c.within;
c.within = null;
}
}
    final 
{
    Context* topContext()
in
{
assert(m_curr);
}
body
{
return m_curr;
}
}
    static 
{
    struct Context
{
    void* bstack;
    void* tstack;
    Context* within;
    Context* next;
    Context* prev;
}
}
    Context m_main;
    Context* m_curr;
    bool m_lock;
    void[] m_tls;
    version (Windows)
{
    version (X86)
{
    uint[8] m_reg;
}
else
{
    version (X86_64)
{
    ulong[16] m_reg;
}
else
{
    static assert("Architecture not supported.");
}
}
}
else
{
    version (OSX)
{
    version (X86)
{
    uint[8] m_reg;
}
else
{
    version (X86_64)
{
    ulong[16] m_reg;
}
else
{
    static assert("Architecture not supported.");
}
}
}
}
    private
{
    static 
{
    Object slock()
{
return Thread.classinfo;
}
}
    static 
{
    Context* sm_cbeg;
}
    static 
{
    size_t sm_clen;
}
    static 
{
    Thread sm_tbeg;
}
    static 
{
    size_t sm_tlen;
}
    Thread prev;
    Thread next;
    static 
{
    void add(Context* c);
}
    static 
{
    void remove(Context* c);
}
    static 
{
    void add(Thread t);
}
    static 
{
    void remove(Thread t);
}
}
}
}
}
}
}
extern (C) 
{
    void thread_init();
}
extern (C) 
{
    void thread_attachThis();
}
extern (C) 
{
    void thread_detachThis()
{
Thread.remove(Thread.getThis());
}
}
extern (C) 
{
    void thread_joinAll();
}
private
{
    bool multiThreadedFlag = false;
}
extern (C) 
{
    bool thread_needLock()
{
return multiThreadedFlag;
}
}
private
{
    uint suspendDepth = 0;
}
extern (C) 
{
    void thread_suspendAll();
}
extern (C) 
{
    void thread_resumeAll();
}
private
{
    alias void delegate(void*, void*) scanAllThreadsFn;
}
extern (C) 
{
    void thread_scanAll(scanAllThreadsFn scan, void* curStackTop = null);
}
template ThreadLocal(T)
{
class ThreadLocal
{
    this(T def = T.init)
{
m_def = def;
m_key = Thread.createLocal();
}
        T val()
{
Wrap* wrap = cast(Wrap*)Thread.getLocal(m_key);
return wrap ? wrap.val : m_def;
}
    T val(T newval)
{
Wrap* wrap = cast(Wrap*)Thread.getLocal(m_key);
if (wrap is null)
{
wrap = new Wrap;
Thread.setLocal(m_key,wrap);
}
wrap.val = newval;
return newval;
}
    private
{
    struct Wrap
{
    T val;
}
    T m_def;
    uint m_key;
}
}
}
class ThreadGroup
{
    final 
{
    Thread create(void function() fn);
}
    final 
{
    Thread create(void delegate() dg);
}
    final 
{
    void add(Thread t);
}
    final 
{
    void remove(Thread t);
}
    final 
{
    int opApply(int delegate(ref Thread) dg);
}
    final 
{
    void joinAll(bool rethrow = true);
}
    private
{
    Thread[Thread] m_all;
}
}
private
{
    version (D_InlineAsm_X86)
{
    version (X86_64)
{
}
else
{
    version (Windows)
{
    version = AsmX86_Win32;
}
else
{
    version (Posix)
{
    version = AsmX86_Posix;
}
}
}
}
else
{
    version (PPC)
{
    version (Posix)
{
    version = AsmPPC_Posix;
}
}
}
    version (Posix)
{
    import core.sys.posix.unistd;
    import core.sys.posix.sys.mman;
    import core.sys.posix.stdlib;
    version (AsmX86_Win32)
{
}
else
{
    version (AsmX86_Posix)
{
}
else
{
    version (AsmPPC_Posix)
{
}
else
{
    import core.sys.posix.ucontext;
}
}
}
}
    const 
{
    size_t PAGESIZE;
}
}
static this();
private
{
    extern (C) 
{
    void fiber_entryPoint();
}
    version (AsmPPC_Posix)
{
    extern (C) 
{
    void fiber_switchContext(void** oldp, void* newp);
}
}
else
{
    extern (C) 
{
    void fiber_switchContext(void** oldp, void* newp);
}
}
}
class Fiber
{
    this(void function() fn, size_t sz = PAGESIZE)
in
{
assert(fn);
}
body
{
m_fn = fn;
m_call = Call.FN;
m_state = State.HOLD;
allocStack(sz);
initStack();
}
    this(void delegate() dg, size_t sz = PAGESIZE)
in
{
assert(dg);
}
body
{
m_dg = dg;
m_call = Call.DG;
m_state = State.HOLD;
allocStack(sz);
initStack();
}
        final 
{
    Object call(bool rethrow = true);
}
    final 
{
    void reset()
in
{
assert(m_state == State.TERM);
assert(m_ctxt.tstack == m_ctxt.bstack);
}
body
{
m_state = State.HOLD;
initStack();
m_unhandled = null;
}
}
    enum State 
{
HOLD,
EXEC,
TERM,
}
    final 
{
    State state()
{
return m_state;
}
}
    static 
{
    void yield();
}
    static 
{
    void yieldAndThrow(Object obj);
}
    static 
{
    Fiber getThis();
}
    static this();
    private
{
    this()
{
m_call = Call.NO;
}
    final 
{
    void run();
}
    private
{
    enum Call 
{
NO,
FN,
DG,
}
    Call m_call;
    union
{
void function() m_fn;
void delegate() m_dg;
}
    bool m_isRunning;
    Object m_unhandled;
    State m_state;
    private
{
    final 
{
    void allocStack(size_t sz);
}
    final 
{
    void freeStack();
}
    final 
{
    void initStack();
}
    Thread.Context* m_ctxt;
    size_t m_size;
    void* m_pmem;
    static if(is(ucontext_t))
{
    static 
{
    ucontext_t sm_utxt = void;
}
    ucontext_t m_utxt = void;
    ucontext_t* m_ucur = null;
}
    private
{
    static 
{
    void setThis(Fiber f);
}
    static 
{
    Thread.TLSKey sm_this;
}
    private
{
    final 
{
    void switchIn();
}
    final 
{
    void switchOut();
}
}
}
}
}
}
}
version (OSX)
{
    extern (D) 
{
    void* ___tls_get_addr(void* p)
{
return p;
}
}
}
