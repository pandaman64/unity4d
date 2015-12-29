// Written in the D programming language.

/**
This module is a port of a growing fragment of the $(D
algorithm) header in Alexander Stepanov's
$(LINK2 http://www.sgi.com/tech/stl/,Standard Template Library).

Author:

$(WEB erdani.org, Andrei Alexandrescu)

Note:

For now only iterators for built-in arrays are defined. Built-in
arrays are also considered ranges themselves. The iterator of a
built-in array $(D T[]) is a pointer of type $(D T*). This may change
in the future.

Macros:
WIKI = Phobos/StdIterator
*/

/*
 *  Copyright (C) 2004-2008 by Digital Mars, www.digitalmars.com
 *  Written by Andrei Alexandrescu, www.erdani.org
 *
 *  This software is provided 'as-is', without any express or implied
 *  warranty. In no event will the authors be held liable for any damages
 *  arising from the use of this software.
 *
 *  Permission is granted to anyone to use this software for any purpose,
 *  including commercial applications, and to alter it and redistribute it
 *  freely, subject to the following restrictions:
 *
 *  o  The origin of this software must not be misrepresented; you must not
 *     claim that you wrote the original software. If you use this software
 *     in a product, an acknowledgment in the product documentation would be
 *     appreciated but is not required.
 *  o  Altered source versions must be plainly marked as such, and must not
 *     be misrepresented as being the original software.
 *  o  This notice may not be removed or altered from any source
 *     distribution.
 */

module std.iterator;

/* The iterator-related part below is undocumented and might
 * change in future releases. Do NOT rely on it.
*/

/**
$(D Iterator!(Range)) or $(D Iterator!(Collection)) is the type that
is able to iterate an object of type $(D Range) or $(D Collection),
respectively. This defines $(D Iterator!(T[])) to be $(D T*) for all
types $(D T).
*/
template Iterator(Range : T[], T)
{
    alias T* Iterator;
}

/**
The element type of a range. For a built-in array $(D T[]), the
element type is $(D T).
 */
template ElementType(Range : T[], T)
{
    alias T ElementType;
}

/**
Returns $(D true) if and only if the range $(D r) is empty.
*/
bool isEmpty(T)(T[] r)
{
    return !r.length;
}

/**
Returns an iterator to the beginning of the range $(D r).
*/
Iterator!(T[]) begin(T)(T[] r)
{
    return r.ptr;
}

/**
Returns an iterator just past the end of the range $(D r).
*/
Iterator!(T[]) end(T)(T[] r)
{
    return r.ptr + r.length;
}

/**
Returns the front element of the range.

Preconditions:
$(D !isEmpty(r))
*/
ElementType!(T[]) front(T)(T[] r)
{
    assert(r.length);
    return *r.ptr;
}

// void next(T)(ref T[] range)
// {
//     range = range.ptr[1 .. range.length];;
// }

/**
Creates a range from a pair of iterators.

Precondition:

$(D last) must be reachable from $(D first) (for pointers, both must
belong to the same memory chunk and $(D last >= first)).
*/
T[] range(T)(T* first, T* last)
{
    assert(first <= last);
    return first[0 .. last - first];
}

/**
Type that reverses the iteration order of a range.
*/

struct Retro(R : E[], E)
{
    E[] forward;
    static Retro opCall(E[] range)
    {
        Retro result = { range };
        return result;
    }
}

/**
Returns a range that iterates $(D r) backwards.
*/

Retro!(E[]) retro(E)(E[] r)
{
    return Retro!(E[])(r);
}

struct Iterator(R : Retro!(T), T)
{
    Iterator!(T) it;
    int opSubtract(Iterator)(Iterator rhs)
    {
        assert(it <= rhs.it);
        return rhs.it - it;
    }
    /// @@@BUG@@@
    void opPreInc()
    {
        --it;
    }
    Iterator opAdd(int i)
    {
        auto result = this;
        result += i;
        return result;
    }
    void opAddAssign(int i)
    {
        it -= i;
    }
    typeof(it[-1]) opStar()
    {
        return it[-1];
    }
}

Iterator!(Retro!(F)) begin(F)(Retro!(F) range)
{
    typeof(return) result;
    result.it = end(range.forward);
    return result;
}

Iterator!(Retro!(F)) end(F)(Retro!(F) range)
{
    typeof(return) result;
    result.it = begin(range.forward);
    return result;
}

/**
Returns $(D begin(retro(range))).
*/

Iterator!(Retro!(F[])) rBegin(F)(F[] range)
{
    return begin(retro(range));
}

/**
Returns $(D end(retro(range))).
*/

Iterator!(Retro!(F[])) rEnd(F)(F[] range)
{
    return end(retro(range));
}

//import std.stdio;

unittest
{
    int[] a = [ 1, 2, 3 ];
    auto r = retro(a);
    //foreach (i; begin(r) .. end(r))
    for (auto i = begin(r); i != end(r); ++i)
    {
        //writeln(*i);
    }
}
