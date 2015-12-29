/**
 * D header file for POSIX.
 *
 * Copyright: Public Domain
 * License:   Public Domain
 * Authors:   Sean Kelly
 * Standards: The Open Group Base Specifications Issue 6, IEEE Std 1003.1, 2004 Edition
 */
module core.sys.posix.netinet.tcp;

private import core.sys.posix.config;

extern (C):

//
// Required
//
/*
TCP_NODELAY
*/

version( linux )
{
    enum TCP_NODELAY = 1;
}
else version( OSX )
{
    enum TCP_NODELAY = 1;
}
else version( freebsd )
{
    enum TCP_NODELAY = 1;
}
