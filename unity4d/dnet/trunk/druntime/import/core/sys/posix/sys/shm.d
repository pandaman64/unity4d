/**
 * D header file for POSIX.
 *
 * Copyright: Public Domain
 * License:   Public Domain
 * Authors:   Sean Kelly
 * Standards: The Open Group Base Specifications Issue 6, IEEE Std 1003.1, 2004 Edition
 */
module core.sys.posix.sys.shm;

private import core.sys.posix.config;
public import core.sys.posix.sys.types; // for pid_t, time_t, key_t, size_t
public import core.sys.posix.sys.ipc;

extern (C):

//
// XOpen (XSI)
//
/*
SHM_RDONLY
SHM_RND

SHMLBA

shmatt_t

struct shmid_ds
{
    ipc_perm    shm_perm;
    size_t      shm_segsz;
    pid_t       shm_lpid;
    pid_t       shm_cpid;
    shmatt_t    shm_nattch;
    time_t      shm_atime;
    time_t      shm_dtime;
    time_t      shm_ctime;
}

void* shmat(int, in void*, int);
int   shmctl(int, int, shmid_ds*);
int   shmdt(in void*);
int   shmget(key_t, size_t, int);
*/

version( linux )
{
    enum SHM_RDONLY     = 010000;
    enum SHM_RND        = 020000;

    int   __getpagesize();
    alias __getpagesize SHMLBA;

    alias c_ulong   shmatt_t;

    struct shmid_ds
    {
        ipc_perm    shm_perm;
        size_t      shm_segsz;
        time_t      shm_atime;
        c_ulong     __unused1;
        time_t      shm_dtime;
        c_ulong     __unused2;
        time_t      shm_ctime;
        c_ulong     __unused3;
        pid_t       shm_cpid;
        pid_t       shm_lpid;
        shmatt_t    shm_nattch;
        c_ulong     __unused4;
        c_ulong     __unused5;
    }

    void* shmat(int, in void*, int);
    int   shmctl(int, int, shmid_ds*);
    int   shmdt(in void*);
    int   shmget(key_t, size_t, int);
}
else version( freebsd )
{
    enum SHM_RDONLY     = 010000;
    enum SHM_RND        = 020000;
    enum SHMLBA         = 1 << 12; // PAGE_SIZE = (1<<PAGE_SHIFT)

    alias c_ulong   shmatt_t;

    struct shmid_ds
    {
        ipc_perm    shm_perm;
        size_t      shm_segsz;
        time_t      shm_atime;
        c_ulong     __unused1;
        time_t      shm_dtime;
        c_ulong     __unused2;
        time_t      shm_ctime;
        c_ulong     __unused3;
        pid_t       shm_cpid;
        pid_t       shm_lpid;
        shmatt_t    shm_nattch;
        c_ulong     __unused4;
        c_ulong     __unused5;
    }

    void* shmat(int, in void*, int);
    int   shmctl(int, int, shmid_ds*);
    int   shmdt(in void*);
    int   shmget(key_t, size_t, int);
}
else version( OSX )
{

}
