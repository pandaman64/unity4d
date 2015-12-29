/**
 * D header file for POSIX.
 *
 * Copyright: Public Domain
 * License:   Public Domain
 * Authors:   Sean Kelly
 * Standards: The Open Group Base Specifications Issue 6, IEEE Std 1003.1, 2004 Edition
 */
module core.sys.posix.pthread;

private import core.sys.posix.config;
public import core.sys.posix.sys.types;
public import core.sys.posix.sched;
public import core.sys.posix.time;

extern (C):

//
// Required
//
/*
PTHREAD_CANCEL_ASYNCHRONOUS
PTHREAD_CANCEL_ENABLE
PTHREAD_CANCEL_DEFERRED
PTHREAD_CANCEL_DISABLE
PTHREAD_CANCELED
PTHREAD_COND_INITIALIZER
PTHREAD_CREATE_DETACHED
PTHREAD_CREATE_JOINABLE
PTHREAD_EXPLICIT_SCHED
PTHREAD_INHERIT_SCHED
PTHREAD_MUTEX_INITIALIZER
PTHREAD_ONCE_INIT
PTHREAD_PROCESS_SHARED
PTHREAD_PROCESS_PRIVATE

int pthread_atfork(void function(), void function(), void function());
int pthread_attr_destroy(pthread_attr_t*);
int pthread_attr_getdetachstate(in pthread_attr_t*, int*);
int pthread_attr_getschedparam(in pthread_attr_t*, sched_param*);
int pthread_attr_init(pthread_attr_t*);
int pthread_attr_setdetachstate(pthread_attr_t*, int);
int pthread_attr_setschedparam(in pthread_attr_t*, sched_param*);
int pthread_cancel(pthread_t);
void pthread_cleanup_push(void function(void*), void*);
void pthread_cleanup_pop(int);
int pthread_cond_broadcast(pthread_cond_t*);
int pthread_cond_destroy(pthread_cond_t*);
int pthread_cond_init(in pthread_cond_t*, pthread_condattr_t*);
int pthread_cond_signal(pthread_cond_t*);
int pthread_cond_timedwait(pthread_cond_t*, pthread_mutex_t*, in timespec*);
int pthread_cond_wait(pthread_cond_t*, pthread_mutex_t*);
int pthread_condattr_destroy(pthread_condattr_t*);
int pthread_condattr_init(pthread_condattr_t*);
int pthread_create(pthread_t*, in pthread_attr_t*, void* function(void*), void*);
int pthread_detach(pthread_t);
int pthread_equal(pthread_t, pthread_t);
void pthread_exit(void*);
void* pthread_getspecific(pthread_key_t);
int pthread_join(pthread_t, void**);
int pthread_key_create(pthread_key_t*, void function(void*));
int pthread_key_delete(pthread_key_t);
int pthread_mutex_destroy(pthread_mutex_t*);
int pthread_mutex_init(pthread_mutex_t*, pthread_mutexattr_t*);
int pthread_mutex_lock(pthread_mutex_t*);
int pthread_mutex_trylock(pthread_mutex_t*);
int pthread_mutex_unlock(pthread_mutex_t*);
int pthread_mutexattr_destroy(pthread_mutexattr_t*);
int pthread_mutexattr_init(pthread_mutexattr_t*);
int pthread_once(pthread_once_t*, void function());
int pthread_rwlock_destroy(pthread_rwlock_t*);
int pthread_rwlock_init(in pthread_rwlock_t*, pthread_rwlockattr_t*);
int pthread_rwlock_rdlock(pthread_rwlock_t*);
int pthread_rwlock_tryrdlock(pthread_rwlock_t*);
int pthread_rwlock_trywrlock(pthread_rwlock_t*);
int pthread_rwlock_unlock(pthread_rwlock_t*);
int pthread_rwlock_wrlock(pthread_rwlock_t*);
int pthread_rwlockattr_destroy(pthread_rwlockattr_t*);
int pthread_rwlockattr_init(pthread_rwlockattr_t*);
pthread_t pthread_self();
int pthread_setcancelstate(int, int*);
int pthread_setcanceltype(int, int*);
int pthread_setspecific(pthread_key_t, in void*);
void pthread_testcancel();
*/
version( linux )
{
    enum
    {
        PTHREAD_CANCEL_ENABLE,
        PTHREAD_CANCEL_DISABLE
    }

    enum
    {
        PTHREAD_CANCEL_DEFERRED,
        PTHREAD_CANCEL_ASYNCHRONOUS
    }

    enum PTHREAD_CANCELED = cast(void*) -1;

    //enum pthread_mutex_t PTHREAD_COND_INITIALIZER = { __LOCK_ALT_INITIALIZER, 0, "", 0 };

    enum
    {
        PTHREAD_CREATE_JOINABLE,
        PTHREAD_CREATE_DETACHED
    }

    enum
    {
        PTHREAD_INHERIT_SCHED,
        PTHREAD_EXPLICIT_SCHED
    }

    //enum pthread_mutex_t PTHREAD_MUTEX_INITIALIZER = { 0, 0, null, PTHREAD_MUTEX_NORMAL, { 0, 0 } };

    enum PTHREAD_ONCE_INIT = 0;

    enum
    {
        PTHREAD_PROCESS_PRIVATE,
        PTHREAD_PROCESS_SHARED
    }
}
else version( OSX )
{
    enum
    {
        PTHREAD_CANCEL_ENABLE   = 1,
        PTHREAD_CANCEL_DISABLE  = 0
    }

    enum
    {
        PTHREAD_CANCEL_DEFERRED     = 2,
        PTHREAD_CANCEL_ASYNCHRONOUS = 0
    }

    enum PTHREAD_CANCELED = cast(void*) -1;

    //enum pthread_mutex_t PTHREAD_COND_INITIALIZER = { __LOCK_ALT_INITIALIZER, 0, "", 0 };

    enum
    {
        PTHREAD_CREATE_JOINABLE = 1,
        PTHREAD_CREATE_DETACHED = 2
    }

    enum
    {
        PTHREAD_INHERIT_SCHED   = 1,
        PTHREAD_EXPLICIT_SCHED  = 2
    }

    //enum pthread_mutex_t PTHREAD_MUTEX_INITIALIZER = { 0, 0, null, PTHREAD_MUTEX_NORMAL, { 0, 0 } };

    enum PTHREAD_ONCE_INIT = 0;

    enum
    {
        PTHREAD_PROCESS_PRIVATE = 2,
        PTHREAD_PROCESS_SHARED  = 1
    }
}

int pthread_atfork(void function(), void function(), void function());
int pthread_attr_destroy(pthread_attr_t*);
int pthread_attr_getdetachstate(in pthread_attr_t*, int*);
int pthread_attr_getschedparam(in pthread_attr_t*, sched_param*);
int pthread_attr_init(pthread_attr_t*);
int pthread_attr_setdetachstate(pthread_attr_t*, int);
int pthread_attr_setschedparam(in pthread_attr_t*, sched_param*);
int pthread_cancel(pthread_t);

version( linux )
{
    alias void function(void*) _pthread_cleanup_routine;

    struct _pthread_cleanup_buffer
    {
        _pthread_cleanup_routine    __routine;
        void*                       __arg;
        int                         __canceltype;
        _pthread_cleanup_buffer*    __prev;
    }

    void _pthread_cleanup_push(_pthread_cleanup_buffer*, _pthread_cleanup_routine, void*);
    void _pthread_cleanup_pop(_pthread_cleanup_buffer*, int);

    struct pthread_cleanup
    {
        _pthread_cleanup_buffer buffer = void;

        void push()( _pthread_cleanup_routine routine, void* arg )
        {
            _pthread_cleanup_push( &buffer, routine, arg );
        }

        void pop()( int execute )
        {
            _pthread_cleanup_pop( &buffer, execute );
        }
    }
}
else version( OSX )
{
    alias void function(void*) _pthread_cleanup_routine;

    struct _pthread_cleanup_buffer
    {
        _pthread_cleanup_routine    __routine;
        void*                       __arg;
        _pthread_cleanup_buffer*    __next;
    }

    struct pthread_cleanup
    {
        _pthread_cleanup_buffer buffer = void;

        void push()( _pthread_cleanup_routine routine, void* arg )
        {
            pthread_t self       = pthread_self();
            buffer.__routine     = routine;
            buffer.__arg         = arg;
            buffer.__next        = cast(_pthread_cleanup_buffer*) self.__cleanup_stack;
            self.__cleanup_stack = cast(pthread_handler_rec*) &buffer;
        }

        void pop()( int execute )
        {
            pthread_t self       = pthread_self();
            self.__cleanup_stack = cast(pthread_handler_rec*) buffer.__next;
            if( execute )
            {
                buffer.__routine( buffer.__arg );
            }
        }
    }
}
else
{
    void pthread_cleanup_push(void function(void*), void*);
    void pthread_cleanup_pop(int);
}

int pthread_cond_broadcast(pthread_cond_t*);
int pthread_cond_destroy(pthread_cond_t*);
int pthread_cond_init(in pthread_cond_t*, pthread_condattr_t*);
int pthread_cond_signal(pthread_cond_t*);
int pthread_cond_timedwait(pthread_cond_t*, pthread_mutex_t*, in timespec*);
int pthread_cond_wait(pthread_cond_t*, pthread_mutex_t*);
int pthread_condattr_destroy(pthread_condattr_t*);
int pthread_condattr_init(pthread_condattr_t*);
int pthread_create(pthread_t*, in pthread_attr_t*, void* function(void*), void*);
int pthread_detach(pthread_t);
int pthread_equal(pthread_t, pthread_t);
void pthread_exit(void*);
void* pthread_getspecific(pthread_key_t);
int pthread_join(pthread_t, void**);
int pthread_key_create(pthread_key_t*, void function(void*));
int pthread_key_delete(pthread_key_t);
int pthread_mutex_destroy(pthread_mutex_t*);
int pthread_mutex_init(pthread_mutex_t*, pthread_mutexattr_t*);
int pthread_mutex_lock(pthread_mutex_t*);
int pthread_mutex_trylock(pthread_mutex_t*);
int pthread_mutex_unlock(pthread_mutex_t*);
int pthread_mutexattr_destroy(pthread_mutexattr_t*);
int pthread_mutexattr_init(pthread_mutexattr_t*);
int pthread_once(pthread_once_t*, void function());
int pthread_rwlock_destroy(pthread_rwlock_t*);
int pthread_rwlock_init(in pthread_rwlock_t*, pthread_rwlockattr_t*);
int pthread_rwlock_rdlock(pthread_rwlock_t*);
int pthread_rwlock_tryrdlock(pthread_rwlock_t*);
int pthread_rwlock_trywrlock(pthread_rwlock_t*);
int pthread_rwlock_unlock(pthread_rwlock_t*);
int pthread_rwlock_wrlock(pthread_rwlock_t*);
int pthread_rwlockattr_destroy(pthread_rwlockattr_t*);
int pthread_rwlockattr_init(pthread_rwlockattr_t*);
pthread_t pthread_self();
int pthread_setcancelstate(int, int*);
int pthread_setcanceltype(int, int*);
int pthread_setspecific(pthread_key_t, in void*);
void pthread_testcancel();

//
// Barrier (BAR)
//
/*
PTHREAD_BARRIER_SERIAL_THREAD

int pthread_barrier_destroy(pthread_barrier_t*);
int pthread_barrier_init(pthread_barrier_t*, in pthread_barrierattr_t*, uint);
int pthread_barrier_wait(pthread_barrier_t*);
int pthread_barrierattr_destroy(pthread_barrierattr_t*);
int pthread_barrierattr_getpshared(in pthread_barrierattr_t*, int*); (BAR|TSH)
int pthread_barrierattr_init(pthread_barrierattr_t*);
int pthread_barrierattr_setpshared(pthread_barrierattr_t*, int); (BAR|TSH)
*/

version( linux )
{
    enum PTHREAD_BARRIER_SERIAL_THREAD = -1;

    int pthread_barrier_destroy(pthread_barrier_t*);
    int pthread_barrier_init(pthread_barrier_t*, in pthread_barrierattr_t*, uint);
    int pthread_barrier_wait(pthread_barrier_t*);
    int pthread_barrierattr_destroy(pthread_barrierattr_t*);
    int pthread_barrierattr_getpshared(in pthread_barrierattr_t*, int*);
    int pthread_barrierattr_init(pthread_barrierattr_t*);
    int pthread_barrierattr_setpshared(pthread_barrierattr_t*, int);
}

//
// Clock (CS)
//
/*
int pthread_condattr_getclock(in pthread_condattr_t*, clockid_t*);
int pthread_condattr_setclock(pthread_condattr_t*, clockid_t);
*/

//
// Spinlock (SPI)
//
/*
int pthread_spin_destroy(pthread_spinlock_t*);
int pthread_spin_init(pthread_spinlock_t*, int);
int pthread_spin_lock(pthread_spinlock_t*);
int pthread_spin_trylock(pthread_spinlock_t*);
int pthread_spin_unlock(pthread_spinlock_t*);
*/

version( linux )
{
    int pthread_spin_destroy(pthread_spinlock_t*);
    int pthread_spin_init(pthread_spinlock_t*, int);
    int pthread_spin_lock(pthread_spinlock_t*);
    int pthread_spin_trylock(pthread_spinlock_t*);
    int pthread_spin_unlock(pthread_spinlock_t*);
}

//
// XOpen (XSI)
//
/*
PTHREAD_MUTEX_DEFAULT
PTHREAD_MUTEX_ERRORCHECK
PTHREAD_MUTEX_NORMAL
PTHREAD_MUTEX_RECURSIVE

int pthread_attr_getguardsize(in pthread_attr_t*, size_t*);
int pthread_attr_setguardsize(pthread_attr_t*, size_t);
int pthread_getconcurrency();
int pthread_mutexattr_gettype(in pthread_mutexattr_t*, int*);
int pthread_mutexattr_settype(pthread_mutexattr_t*, int);
int pthread_setconcurrency(int);
*/

version( linux )
{
    enum PTHREAD_MUTEX_NORMAL       = 0;
    enum PTHREAD_MUTEX_RECURSIVE    = 1;
    enum PTHREAD_MUTEX_ERRORCHECK   = 2;
    enum PTHREAD_MUTEX_DEFAULT      = PTHREAD_MUTEX_NORMAL;

    int pthread_attr_getguardsize(in pthread_attr_t*, size_t*);
    int pthread_attr_setguardsize(pthread_attr_t*, size_t);
    int pthread_getconcurrency();
    int pthread_mutexattr_gettype(in pthread_mutexattr_t*, int*);
    int pthread_mutexattr_settype(pthread_mutexattr_t*, int);
    int pthread_setconcurrency(int);
}
else version( OSX )
{
    enum PTHREAD_MUTEX_NORMAL       = 0;
    enum PTHREAD_MUTEX_ERRORCHECK   = 1;
    enum PTHREAD_MUTEX_RECURSIVE    = 2;
    enum PTHREAD_MUTEX_DEFAULT      = PTHREAD_MUTEX_NORMAL;

    int pthread_attr_getguardsize(in pthread_attr_t*, size_t*);
    int pthread_attr_setguardsize(pthread_attr_t*, size_t);
    int pthread_getconcurrency();
    int pthread_mutexattr_gettype(in pthread_mutexattr_t*, int*);
    int pthread_mutexattr_settype(pthread_mutexattr_t*, int);
    int pthread_setconcurrency(int);
}
else version( freebsd )
{
    enum
    {
        PTHREAD_MUTEX_ERRORCHECK    = 1,
        PTHREAD_MUTEX_RECURSIVE     = 2,
        PTHREAD_MUTEX_NORMAL        = 3,
        PTHREAD_MUTEX_ADAPTIVE_NP   = 4,
        PTHREAD_MUTEX_TYPE_MAX
    }
    enum PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_ERRORCHECK;

    int pthread_attr_getguardsize(in pthread_attr_t*, size_t*);
    int pthread_attr_setguardsize(pthread_attr_t*, size_t);
    int pthread_getconcurrency();
    int pthread_mutexattr_gettype(pthread_mutexattr_t*, int*);
    int pthread_mutexattr_settype(pthread_mutexattr_t*, int);
    int pthread_setconcurrency(int);
}

//
// CPU Time (TCT)
//
/*
int pthread_getcpuclockid(pthread_t, clockid_t*);
*/

version( linux )
{
    int pthread_getcpuclockid(pthread_t, clockid_t*);
}

//
// Timeouts (TMO)
//
/*
int pthread_mutex_timedlock(pthread_mutex_t*, timespec*);
int pthread_rwlock_timedrdlock(pthread_rwlock_t*, in timespec*);
int pthread_rwlock_timedwrlock(pthread_rwlock_t*, in timespec*);
*/

version( linux )
{
    int pthread_mutex_timedlock(pthread_mutex_t*, timespec*);
    int pthread_rwlock_timedrdlock(pthread_rwlock_t*, in timespec*);
    int pthread_rwlock_timedwrlock(pthread_rwlock_t*, in timespec*);
}
else version( OSX )
{
    int pthread_mutex_timedlock(pthread_mutex_t*, timespec*);
    int pthread_rwlock_timedrdlock(pthread_rwlock_t*, in timespec*);
    int pthread_rwlock_timedwrlock(pthread_rwlock_t*, in timespec*);
}

//
// Priority (TPI|TPP)
//
/*
PTHREAD_PRIO_INHERIT (TPI)
PTHREAD_PRIO_NONE (TPP|TPI)
PTHREAD_PRIO_PROTECT (TPI)

int pthread_mutex_getprioceiling(in pthread_mutex_t*, int*); (TPP)
int pthread_mutex_setprioceiling(pthread_mutex_t*, int, int*); (TPP)
int pthread_mutexattr_getprioceiling(pthread_mutexattr_t*, int*); (TPP)
int pthread_mutexattr_getprotocol(in pthread_mutexattr_t*, int*); (TPI|TPP)
int pthread_mutexattr_setprioceiling(pthread_mutexattr_t*, int); (TPP)
int pthread_mutexattr_setprotocol(pthread_mutexattr_t*, int); (TPI|TPP)
*/

//
// Scheduling (TPS)
//
/*
PTHREAD_SCOPE_PROCESS
PTHREAD_SCOPE_SYSTEM

int pthread_attr_getinheritsched(in pthread_attr_t*, int*);
int pthread_attr_getschedpolicy(in pthread_attr_t*, int*);
int pthread_attr_getscope(in pthread_attr_t*, int*);
int pthread_attr_setinheritsched(pthread_attr_t*, int);
int pthread_attr_setschedpolicy(pthread_attr_t*, int);
int pthread_attr_setscope(pthread_attr_t*, int);
int pthread_getschedparam(pthread_t, int*, sched_param*);
int pthread_setschedparam(pthread_t, int, in sched_param*);
int pthread_setschedprio(pthread_t, int);
*/

version( linux )
{
    enum
    {
        PTHREAD_SCOPE_SYSTEM,
        PTHREAD_SCOPE_PROCESS
    }

    int pthread_attr_getinheritsched(in pthread_attr_t*, int*);
    int pthread_attr_getschedpolicy(in pthread_attr_t*, int*);
    int pthread_attr_getscope(in pthread_attr_t*, int*);
    int pthread_attr_setinheritsched(pthread_attr_t*, int);
    int pthread_attr_setschedpolicy(pthread_attr_t*, int);
    int pthread_attr_setscope(pthread_attr_t*, int);
    int pthread_getschedparam(pthread_t, int*, sched_param*);
    int pthread_setschedparam(pthread_t, int, in sched_param*);
    //int pthread_setschedprio(pthread_t, int);
}
else version( OSX )
{
    enum
    {
        PTHREAD_SCOPE_SYSTEM    = 1,
        PTHREAD_SCOPE_PROCESS   = 2
    }

    int pthread_attr_getinheritsched(in pthread_attr_t*, int*);
    int pthread_attr_getschedpolicy(in pthread_attr_t*, int*);
    int pthread_attr_getscope(in pthread_attr_t*, int*);
    int pthread_attr_setinheritsched(pthread_attr_t*, int);
    int pthread_attr_setschedpolicy(pthread_attr_t*, int);
    int pthread_attr_setscope(pthread_attr_t*, int);
    int pthread_getschedparam(pthread_t, int*, sched_param*);
    int pthread_setschedparam(pthread_t, int, in sched_param*);
    //int pthread_setschedprio(pthread_t, int);
}
else version( freebsd )
{
    enum
    {
        PTHREAD_SCOPE_PROCESS   = 0,
        PTHREAD_SCOPE_SYSTEM    = 0x2
    }

    int pthread_attr_getinheritsched(in pthread_attr_t*, int*);
    int pthread_attr_getschedpolicy(in pthread_attr_t*, int*);
    int pthread_attr_getscope(in pthread_attr_t*, int*);
    int pthread_attr_setinheritsched(pthread_attr_t*, int);
    int pthread_attr_setschedpolicy(pthread_attr_t*, int);
    int pthread_attr_setscope(in pthread_attr_t*, int);
    int pthread_getschedparam(pthread_t, int*, sched_param*);
    int pthread_setschedparam(pthread_t, int, sched_param*);
    //int pthread_setschedprio(pthread_t, int);
}

//
// Stack (TSA|TSS)
//
/*
int pthread_attr_getstack(in pthread_attr_t*, void**, size_t*); (TSA|TSS)
int pthread_attr_getstackaddr(in pthread_attr_t*, void**); (TSA)
int pthread_attr_getstacksize(in pthread_attr_t*, size_t*); (TSS)
int pthread_attr_setstack(pthread_attr_t*, void*, size_t); (TSA|TSS)
int pthread_attr_setstackaddr(pthread_attr_t*, void*); (TSA)
int pthread_attr_setstacksize(pthread_attr_t*, size_t); (TSS)
*/

version( linux )
{
    int pthread_attr_getstack(in pthread_attr_t*, void**, size_t*);
    int pthread_attr_getstackaddr(in pthread_attr_t*, void**);
    int pthread_attr_getstacksize(in pthread_attr_t*, size_t*);
    int pthread_attr_setstack(pthread_attr_t*, void*, size_t);
    int pthread_attr_setstackaddr(pthread_attr_t*, void*);
    int pthread_attr_setstacksize(pthread_attr_t*, size_t);
}
else version( OSX )
{
    int pthread_attr_getstack(in pthread_attr_t*, void**, size_t*);
    int pthread_attr_getstackaddr(in pthread_attr_t*, void**);
    int pthread_attr_getstacksize(in pthread_attr_t*, size_t*);
    int pthread_attr_setstack(pthread_attr_t*, void*, size_t);
    int pthread_attr_setstackaddr(pthread_attr_t*, void*);
    int pthread_attr_setstacksize(pthread_attr_t*, size_t);
}
else version( freebsd )
{
    int pthread_attr_getstack(in pthread_attr_t*, void**, size_t*);
    int pthread_attr_getstackaddr(in pthread_attr_t*, void**);
    int pthread_attr_getstacksize(in pthread_attr_t*, size_t*);
    int pthread_attr_setstack(pthread_attr_t*, void*, size_t);
    int pthread_attr_setstackaddr(pthread_attr_t*, void*);
    int pthread_attr_setstacksize(pthread_attr_t*, size_t);
}

//
// Shared Synchronization (TSH)
//
/*
int pthread_condattr_getpshared(in pthread_condattr_t*, int*);
int pthread_condattr_setpshared(pthread_condattr_t*, int);
int pthread_mutexattr_getpshared(in pthread_mutexattr_t*, int*);
int pthread_mutexattr_setpshared(pthread_mutexattr_t*, int);
int pthread_rwlockattr_getpshared(in pthread_rwlockattr_t*, int*);
int pthread_rwlockattr_setpshared(pthread_rwlockattr_t*, int);
*/
