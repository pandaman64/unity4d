/**
 * D header file for POSIX.
 *
 * Copyright: Public Domain
 * License:   Public Domain
 * Authors:   Sean Kelly
 * Standards: The Open Group Base Specifications Issue 6, IEEE Std 1003.1, 2004 Edition
 */
module core.sys.posix.stdlib;

private import core.sys.posix.config;
public import core.stdc.stdlib;
public import core.sys.posix.sys.wait;

extern (C):

//
// Required (defined in core.stdc.stdlib)
//
/*
EXIT_FAILURE
EXIT_SUCCESS
NULL
RAND_MAX
MB_CUR_MAX
div_t
ldiv_t
lldiv_t
size_t
wchar_t

void    _Exit(int);
void    abort();
int     abs(int);
int     atexit(void function());
double  atof(in char*);
int     atoi(in char*);
c_long  atol(in char*);
long    atoll(in char*);
void*   bsearch(in void*, in void*, size_t, size_t, int function(in void*, in void*));
void*   calloc(size_t, size_t);
div_t   div(int, int);
void    exit(int);
void    free(void*);
char*   getenv(in char*);
c_long  labs(c_long);
ldiv_t  ldiv(c_long, c_long);
long    llabs(long);
lldiv_t lldiv(long, long);
void*   malloc(size_t);
int     mblen(in char*, size_t);
size_t  mbstowcs(wchar_t*, in char*, size_t);
int     mbtowc(wchar_t*, in char*, size_t);
void    qsort(void*, size_t, size_t, int function(in void*, in void*));
int     rand();
void*   realloc(void*, size_t);
void    srand(uint);
double  strtod(in char*, char**);
float   strtof(in char*, char**);
c_long  strtol(in char*, char**, int);
real    strtold(in char*, char**);
long    strtoll(in char*, char**, int);
c_ulong strtoul(in char*, char**, int);
ulong   strtoull(in char*, char**, int);
int     system(in char*);
size_t  wcstombs(char*, in wchar_t*, size_t);
int     wctomb(char*, wchar_t);
*/

//
// Advisory Information (ADV)
//
/*
int posix_memalign(void**, size_t, size_t);
*/

version( linux )
{
    int posix_memalign(void**, size_t, size_t);
}

//
// C Extension (CX)
//
/*
int setenv(in char*, in char*, int);
int unsetenv(in char*);
*/

version( linux )
{
    int setenv(in char*, in char*, int);
    int unsetenv(in char*);

    void* valloc(size_t); // LEGACY non-standard
}
else version( OSX )
{
    int setenv(in char*, in char*, int);
    int unsetenv(in char*);

    void* valloc(size_t); // LEGACY non-standard
}
else version( freebsd )
{
    int setenv(in char*, in char*, int);
    int unsetenv(in char*);

    void* valloc(size_t); // LEGACY non-standard
}

//
// Thread-Safe Functions (TSF)
//
/*
int rand_r(uint*);
*/

version( linux )
{
    int rand_r(uint*);
}
else version( OSX )
{
    int rand_r(uint*);
}
else version( freebsd )
{
    int rand_r(uint*);
}

//
// XOpen (XSI)
//
/*
WNOHANG     (defined in core.sys.posix.sys.wait)
WUNTRACED   (defined in core.sys.posix.sys.wait)
WEXITSTATUS (defined in core.sys.posix.sys.wait)
WIFEXITED   (defined in core.sys.posix.sys.wait)
WIFSIGNALED (defined in core.sys.posix.sys.wait)
WIFSTOPPED  (defined in core.sys.posix.sys.wait)
WSTOPSIG    (defined in core.sys.posix.sys.wait)
WTERMSIG    (defined in core.sys.posix.sys.wait)

c_long a64l(in char*);
double drand48();
char*  ecvt(double, int, int *, int *); // LEGACY
double erand48(ushort[3]);
char*  fcvt(double, int, int *, int *); // LEGACY
char*  gcvt(double, int, char*); // LEGACY
// per spec: int getsubopt(char** char* const*, char**);
int    getsubopt(char**, in char**, char**);
int    grantpt(int);
char*  initstate(uint, char*, size_t);
c_long jrand48(ushort[3]);
char*  l64a(c_long);
void   lcong48(ushort[7]);
c_long lrand48();
char*  mktemp(char*); // LEGACY
int    mkstemp(char*);
c_long mrand48();
c_long nrand48(ushort[3]);
int    posix_openpt(int);
char*  ptsname(int);
int    putenv(char*);
c_long random();
char*  realpath(in char*, char*);
ushort seed48(ushort[3]);
void   setkey(in char*);
char*  setstate(in char*);
void   srand48(c_long);
void   srandom(uint);
int    unlockpt(int);
*/

version( linux )
{
    //WNOHANG     (defined in core.sys.posix.sys.wait)
    //WUNTRACED   (defined in core.sys.posix.sys.wait)
    //WEXITSTATUS (defined in core.sys.posix.sys.wait)
    //WIFEXITED   (defined in core.sys.posix.sys.wait)
    //WIFSIGNALED (defined in core.sys.posix.sys.wait)
    //WIFSTOPPED  (defined in core.sys.posix.sys.wait)
    //WSTOPSIG    (defined in core.sys.posix.sys.wait)
    //WTERMSIG    (defined in core.sys.posix.sys.wait)

    c_long a64l(in char*);
    double drand48();
    char*  ecvt(double, int, int *, int *); // LEGACY
    double erand48(ushort[3]);
    char*  fcvt(double, int, int *, int *); // LEGACY
    char*  gcvt(double, int, char*); // LEGACY
    int    getsubopt(char**, in char**, char**);
    int    grantpt(int);
    char*  initstate(uint, char*, size_t);
    c_long jrand48(ushort[3]);
    char*  l64a(c_long);
    void   lcong48(ushort[7]);
    c_long lrand48();
    char*  mktemp(char*); // LEGACY
    //int    mkstemp(char*);
    c_long mrand48();
    c_long nrand48(ushort[3]);
    int    posix_openpt(int);
    char*  ptsname(int);
    int    putenv(char*);
    c_long random();
    char*  realpath(in char*, char*);
    ushort seed48(ushort[3]);
    void   setkey(in char*);
    char*  setstate(in char*);
    void   srand48(c_long);
    void   srandom(uint);
    int    unlockpt(int);

  static if( __USE_LARGEFILE64 )
  {
    int    mkstemp64(char*);
    alias  mkstemp64 mkstemp;
  }
  else
  {
    int    mkstemp(char*);
  }
}
else version( OSX )
{
    //WNOHANG     (defined in core.sys.posix.sys.wait)
    //WUNTRACED   (defined in core.sys.posix.sys.wait)
    //WEXITSTATUS (defined in core.sys.posix.sys.wait)
    //WIFEXITED   (defined in core.sys.posix.sys.wait)
    //WIFSIGNALED (defined in core.sys.posix.sys.wait)
    //WIFSTOPPED  (defined in core.sys.posix.sys.wait)
    //WSTOPSIG    (defined in core.sys.posix.sys.wait)
    //WTERMSIG    (defined in core.sys.posix.sys.wait)

    c_long a64l(in char*);
    double drand48();
    char*  ecvt(double, int, int *, int *); // LEGACY
    double erand48(ushort[3]);
    char*  fcvt(double, int, int *, int *); // LEGACY
    char*  gcvt(double, int, char*); // LEGACY
    int    getsubopt(char**, in char**, char**);
    int    grantpt(int);
    char*  initstate(uint, char*, size_t);
    c_long jrand48(ushort[3]);
    char*  l64a(c_long);
    void   lcong48(ushort[7]);
    c_long lrand48();
    char*  mktemp(char*); // LEGACY
    int    mkstemp(char*);
    c_long mrand48();
    c_long nrand48(ushort[3]);
    int    posix_openpt(int);
    char*  ptsname(int);
    int    putenv(char*);
    c_long random();
    char*  realpath(in char*, char*);
    ushort seed48(ushort[3]);
    void   setkey(in char*);
    char*  setstate(in char*);
    void   srand48(c_long);
    void   srandom(uint);
    int    unlockpt(int);
}
else version( freebsd )
{
    //WNOHANG     (defined in core.sys.posix.sys.wait)
    //WUNTRACED   (defined in core.sys.posix.sys.wait)
    //WEXITSTATUS (defined in core.sys.posix.sys.wait)
    //WIFEXITED   (defined in core.sys.posix.sys.wait)
    //WIFSIGNALED (defined in core.sys.posix.sys.wait)
    //WIFSTOPPED  (defined in core.sys.posix.sys.wait)
    //WSTOPSIG    (defined in core.sys.posix.sys.wait)
    //WTERMSIG    (defined in core.sys.posix.sys.wait)

    c_long a64l(in char*);
    double drand48();
    //char*  ecvt(double, int, int *, int *); // LEGACY
    double erand48(ushort[3]);
    //char*  fcvt(double, int, int *, int *); // LEGACY
    //char*  gcvt(double, int, char*); // LEGACY
    int    getsubopt(char**, in char**, char**);
    int    grantpt(int);
    char*  initstate(uint, char*, size_t);
    c_long jrand48(ushort[3]);
    char*  l64a(c_long);
    void   lcong48(ushort[7]);
    c_long lrand48();
    char*  mktemp(char*); // LEGACY
    int    mkstemp(char*);
    c_long mrand48();
    c_long nrand48(ushort[3]);
    int    posix_openpt(int);
    char*  ptsname(int);
    int    putenv(char*);
    c_long random();
    char*  realpath(in char*, char*);
    ushort seed48(ushort[3]);
    void   setkey(in char*);
    char*  setstate(in char*);
    void   srand48(c_long);
    void   srandom(uint);
    int    unlockpt(int);
}
