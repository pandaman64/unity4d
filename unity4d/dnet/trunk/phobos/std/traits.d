// Written in the D programming language.

/**
 * Templates with which to extract information about
 * types at compile time.
 *
 * Authors:
 *
 * $(WEB digitalmars.com, Walter Bright), Tomasz Stachowiak ($(D
 *	isExpressionTuple)), $(WEB erdani.org, Andrei Alexandrescu)
 *
 * Macros:
 *	WIKI = Phobos/StdTraits
 * Copyright:
 *	Public Domain
 */

module std.traits;
import std.typetuple;

/***
 * Get the type of the return value from a function,
 * a pointer to function, a delegate, a struct
 * with an opCall, a pointer to a struct with an opCall,
 * or a class with an opCall.
 * Example:
 * ---
 * import std.traits;
 * int foo();
 * ReturnType!(foo) x;   // x is declared as int
 * ---
 */
template ReturnType(alias dg)
{
    static if (is(typeof(dg)))	// if dg is an expression
	alias ReturnType!(typeof(dg), void) ReturnType;
    else			// dg is a type
	alias ReturnType!(dg, void) ReturnType;
}

template ReturnType(dg, dummy = void)
{
    static if (is(dg R == return))
	alias R ReturnType;
    else static if (is(dg T : T*))
	alias ReturnType!(T, void) ReturnType;
    else static if (is(dg S == struct))
	alias ReturnType!(typeof(&dg.opCall), void) ReturnType;
    else static if (is(dg C == class))
	alias ReturnType!(typeof(&dg.opCall), void) ReturnType;
    else
	static assert(0, "argument has no return type");
}

unittest
{
    struct G
    {
	int opCall (int i) { return 1;}
    }

    alias ReturnType!(G) ShouldBeInt;
    static assert(is(ShouldBeInt == int));

    G g;
    static assert(is(ReturnType!(g) == int));

    G* p;
    alias ReturnType!(p) pg;
    static assert(is(pg == int));

    class C
    {
	int opCall (int i) { return 1;}
    }

    static assert(is(ReturnType!(C) == int));

    C c;
    static assert(is(ReturnType!(c) == int));
}

/***
 * Get the types of the paramters to a function,
 * a pointer to function, or a delegate as a tuple.
 * Example:
 * ---
 * import std.traits;
 * int foo(int, long);
 * void bar(ParameterTypeTuple!(foo));      // declares void bar(int, long);
 * void abc(ParameterTypeTuple!(foo)[1]);   // declares void abc(long);
 * ---
 */
template ParameterTypeTuple(alias dg)
{
    alias ParameterTypeTuple!(typeof(dg)) ParameterTypeTuple;
}

/** ditto */
template ParameterTypeTuple(dg)
{
    static if (is(dg P == function))
	alias P ParameterTypeTuple;
    else static if (is(dg P == delegate))
	alias ParameterTypeTuple!(P) ParameterTypeTuple;
    else static if (is(dg P == P*))
	alias ParameterTypeTuple!(P) ParameterTypeTuple;
    else
	static assert(0, "argument has no parameters");
}


/***
 * Get the types of the fields of a struct or class.
 * This consists of the fields that take up memory space,
 * excluding the hidden fields like the virtual function
 * table pointer.
 */

template FieldTypeTuple(S)
{
    static if (is(S == struct) || is(S == class) || is(S == union))
	alias typeof(S.tupleof) FieldTypeTuple;
    else
        alias S FieldTypeTuple;
	//static assert(0, "argument is not struct or class");
}

// // FieldOffsetsTuple
// private template FieldOffsetsTupleImpl(size_t n, T...)
// {
//     static if (T.length == 0)
//     {
//         alias TypeTuple!() Result;
//     }
//     else
//     {
//         //private alias FieldTypeTuple!(T[0]) Types;
//         private enum size_t myOffset =
//             ((n + T[0].alignof - 1) / T[0].alignof) * T[0].alignof;
//         static if (is(T[0] == struct))
//         {
//             alias FieldTypeTuple!(T[0]) MyRep;
//             alias FieldOffsetsTupleImpl!(myOffset, MyRep, T[1 .. $]).Result
//                 Result;
//         }
//         else
//         {
//             private enum size_t mySize = T[0].sizeof;
//             alias TypeTuple!(myOffset) Head;
//             static if (is(T == union))
//             {
//                 alias FieldOffsetsTupleImpl!(myOffset, T[1 .. $]).Result
//                     Tail;
//             }
//             else
//             {
//                 alias FieldOffsetsTupleImpl!(myOffset + mySize,
//                                              T[1 .. $]).Result
//                     Tail;
//             }
//             alias TypeTuple!(Head, Tail) Result;
//         }
//     }
// }

// template FieldOffsetsTuple(T...)
// {
//     alias FieldOffsetsTupleImpl!(0, T).Result FieldOffsetsTuple;
// }

// unittest
// {
//     alias FieldOffsetsTuple!(int) T1;
//     assert(T1.length == 1 && T1[0] == 0);
//     //
//     struct S2 { char a; int b; char c; double d; char e, f; }
//     alias FieldOffsetsTuple!(S2) T2;
//     //pragma(msg, T2);
//     static assert(T2.length == 6
//            && T2[0] == 0 && T2[1] == 4 && T2[2] == 8 && T2[3] == 16
//                   && T2[4] == 24&& T2[5] == 25);
//     //
//     class C { int a, b, c, d; }
//     struct S3 { char a; C b; char c; }
//     alias FieldOffsetsTuple!(S3) T3;
//     //pragma(msg, T2);
//     static assert(T3.length == 3
//            && T3[0] == 0 && T3[1] == 4 && T3[2] == 8);
//     //
//     struct S4 { char a; union { int b; char c; } int d; }
//     alias FieldOffsetsTuple!(S4) T4;
//     //pragma(msg, FieldTypeTuple!(S4));
//     static assert(T4.length == 4
//            && T4[0] == 0 && T4[1] == 4 && T4[2] == 8);
// }

// /***
// Get the offsets of the fields of a struct or class.
// */

// template FieldOffsetsTuple(S)
// {
//     static if (is(S == struct) || is(S == class))
// 	alias typeof(S.tupleof) FieldTypeTuple;
//     else
// 	static assert(0, "argument is not struct or class");
// }

/***
Get the primitive types of the fields of a struct or class, in
topological order.

Example:
----
struct S1 { int a; float b; }
struct S2 { char[] a; union { S1 b; S1 * c; } }
alias RepresentationTypeTuple!(S2) R;
assert(R.length == 4
    && is(R[0] == char[]) && is(R[1] == int)
    && is(R[2] == float) && is(R[3] == S1*));
----
*/

template RepresentationTypeTuple(T...)
{
    static if (T.length == 0)
    {
        alias TypeTuple!() RepresentationTypeTuple;
    }
    else
    {
        static if (is(T[0] == struct) || is(T[0] == union))
// @@@BUG@@@ this should work
//             alias .RepresentationTypes!(T[0].tupleof)
//                 RepresentationTypes;
            alias .RepresentationTypeTuple!(FieldTypeTuple!(T[0]),
                                            T[1 .. $])
                RepresentationTypeTuple;
        else static if (is(T[0] U == typedef))
        {
            alias .RepresentationTypeTuple!(FieldTypeTuple!(U),
                                            T[1 .. $])
                RepresentationTypeTuple;
        }
        else
        {
            alias TypeTuple!(T[0], RepresentationTypeTuple!(T[1 .. $]))
                RepresentationTypeTuple;
        }
    }
}

unittest
{
    alias RepresentationTypeTuple!(int) S1;
    static assert(is(S1 == TypeTuple!(int)));
    struct S2 { int a; }
    static assert(is(RepresentationTypeTuple!(S2) == TypeTuple!(int)));
    struct S3 { int a; char b; }
    static assert(is(RepresentationTypeTuple!(S3) == TypeTuple!(int, char)));
    struct S4 { S1 a; int b; S3 c; }
    static assert(is(RepresentationTypeTuple!(S4) ==
                     TypeTuple!(int, int, int, char)));

    struct S11 { int a; float b; }
    struct S21 { char[] a; union { S11 b; S11 * c; } }
    alias RepresentationTypeTuple!(S21) R;
    assert(R.length == 4
           && is(R[0] == char[]) && is(R[1] == int)
           && is(R[2] == float) && is(R[3] == S11*));
}

/*
RepresentationOffsets
*/

// private template Repeat(size_t n, T...)
// {
//     static if (n == 0) alias TypeTuple!() Repeat;
//     else alias TypeTuple!(T, Repeat!(n - 1, T)) Repeat;
// }

// template RepresentationOffsetsImpl(size_t n, T...)
// {
//     static if (T.length == 0)
//     {
//         alias TypeTuple!() Result;
//     }
//     else
//     {
//         private enum size_t myOffset =
//             ((n + T[0].alignof - 1) / T[0].alignof) * T[0].alignof;
//         static if (!is(T[0] == union))
//         {
//             alias Repeat!(n, FieldTypeTuple!(T[0])).Result
//                 Head;
//         }
//         static if (is(T[0] == struct))
//         {
//             alias .RepresentationOffsetsImpl!(n, FieldTypeTuple!(T[0])).Result
//                 Head;
//         }
//         else
//         {
//             alias TypeTuple!(myOffset) Head;
//         }
//         alias TypeTuple!(Head,
//                          RepresentationOffsetsImpl!(
//                              myOffset + T[0].sizeof, T[1 .. $]).Result)
//             Result;
//     }
// }

// template RepresentationOffsets(T)
// {
//     alias RepresentationOffsetsImpl!(0, T).Result
//         RepresentationOffsets;
// }

// unittest
// {
//     struct S1 { char c; int i; }
//     alias RepresentationOffsets!(S1) Offsets;
//     static assert(Offsets[0] == 0);
//     //pragma(msg, Offsets[1]);
//     static assert(Offsets[1] == 4);
// }

// hasRawAliasing

private template HasRawPointerImpl(T...)
{
    static if (T.length == 0)
    {
        enum result = false;
    }
    else
    {
        static if (is(T[0] foo : U*, U))
            enum hasRawAliasing = !is(U == invariant);
        else static if (is(T[0] foo : U[], U))
            enum hasRawAliasing = !is(U == invariant);
        else
            enum hasRawAliasing = false;
        enum result = hasRawAliasing || HasRawPointerImpl!(T[1 .. $]).result;
    }
}

/*
Statically evaluates to $(D true) if and only if $(D T)'s
representation contains at least one field of pointer or array type.
Members of class types are not considered raw pointers. Pointers to
invariant objects are not considered raw aliasing.

Example:
---
// simple types
static assert(!hasRawAliasing!(int));
static assert(hasRawAliasing!(char*));
// references aren't raw pointers
static assert(!hasRawAliasing!(Object));
// built-in arrays do contain raw pointers
static assert(hasRawAliasing!(int[]));
// aggregate of simple types
struct S1 { int a; double b; }
static assert(!hasRawAliasing!(S1));
// indirect aggregation
struct S2 { S1 a; double b; }
static assert(!hasRawAliasing!(S2));
// struct with a pointer member
struct S3 { int a; double * b; }
static assert(hasRawAliasing!(S3));
// struct with an indirect pointer member
struct S4 { S3 a; double b; }
static assert(hasRawAliasing!(S4));
----
*/
private template hasRawAliasing(T...)
{
    enum hasRawAliasing
        = HasRawPointerImpl!(RepresentationTypeTuple!(T)).result;
}

unittest
{
// simple types
    static assert(!hasRawAliasing!(int));
    static assert(hasRawAliasing!(char*));
// references aren't raw pointers
    static assert(!hasRawAliasing!(Object));
    static assert(!hasRawAliasing!(int));
    struct S1 { int z; }
    static assert(!hasRawAliasing!(S1));
    struct S2 { int* z; }
    static assert(hasRawAliasing!(S2));
    struct S3 { int a; int* z; int c; }
    static assert(hasRawAliasing!(S3));
    struct S4 { int a; int z; int c; }
    static assert(!hasRawAliasing!(S4));
    struct S5 { int a; Object z; int c; }
    static assert(!hasRawAliasing!(S5));
    union S6 { int a; int b; }
    static assert(!hasRawAliasing!(S6));
    union S7 { int a; int * b; }
    static assert(hasRawAliasing!(S7));
    typedef int* S8;
    static assert(hasRawAliasing!(S8));
    enum S9 { a };
    static assert(!hasRawAliasing!(S9));
    // indirect members
    struct S10 { S7 a; int b; }
    static assert(hasRawAliasing!(S10));
    struct S11 { S6 a; int b; }
    static assert(!hasRawAliasing!(S11));
}

/*
Statically evaluates to $(D true) if and only if $(D T)'s
representation includes at least one non-invariant object reference.
*/

private template hasObjects(T...)
{
    static if (T.length == 0)
    {
        enum hasObjects = false;
    }
    else static if (is(T[0] U == typedef))
    {
        enum hasObjects = hasObjects!(U, T[1 .. $]);
    }
    else static if (is(T[0] == struct))
    {
        enum hasObjects = hasObjects!(
            RepresentationTypeTuple!(T[0]), T[1 .. $]);
    }
    else
    {
        enum hasObjects = is(T[0] == class) || hasObjects!(T[1 .. $]);
    }
}

/**
Returns $(D true) if and only if $(D T)'s representation includes at
least one of the following: $(OL $(LI a raw pointer $(D U*) and $(D U)
is not invariant;) $(LI an array $(D U[]) and $(D U) is not
invariant;) $(LI a reference to a class type $(D C) and $(D C) is not
invariant.))
*/

template hasAliasing(T...)
{
    enum hasAliasing = hasRawAliasing!(T) || hasObjects!(T);
}

unittest
{
    struct S1 { int a; Object b; }
    static assert(hasAliasing!(S1));
    struct S2 { string a; }
    static assert(!hasAliasing!(S2));
}

/***
 * Get a $(D_PARAM TypeTuple) of the base class and base interfaces of
 * this class or interface. $(D_PARAM BaseTypeTuple!(Object)) returns
 * the empty type tuple.
 * 
 * Example:
 * ---
 * import std.traits, std.typetuple, std.stdio;
 * interface I { }
 * class A { }
 * class B : A, I { }
 *
 * void main()
 * {
 *     alias BaseTypeTuple!(B) TL;
 *     writeln(typeid(TL));	// prints: (A,I)
 * }
 * ---
 */

template BaseTypeTuple(A)
{
    static if (is(A P == super))
	alias P BaseTypeTuple;
    else
	static assert(0, "argument is not a class or interface");
}

unittest
{
    interface I1 { }
    interface I2 { }
    class A { }
    class C : A, I1, I2 { }

    alias BaseTypeTuple!(C) TL;
    assert(TL.length == 3);
    assert(is (TL[0] == A));
    assert(is (TL[1] == I1));
    assert(is (TL[2] == I2));

    assert(BaseTypeTuple!(Object).length == 0);
}

/**
 * Get a $(D_PARAM TypeTuple) of $(I all) base classes of this class,
 * in decreasing order. Interfaces are not included. $(D_PARAM
 * BaseClassesTuple!(Object)) yields the empty type tuple.
 *
 * Example:
 * ---
 * import std.traits, std.typetuple, std.stdio;
 * interface I { }
 * class A { }
 * class B : A, I { }
 * class C : B { }
 *
 * void main()
 * {
 *     alias BaseClassesTuple!(C) TL;
 *     writeln(typeid(TL));	// prints: (B,A,Object)
 * }
 * ---
 */

template BaseClassesTuple(T)
{
    static if (is(T == Object))
    {
        alias TypeTuple!() BaseClassesTuple;
    }
    static if (is(BaseTypeTuple!(T)[0] == Object))
    {
        alias TypeTuple!(Object) BaseClassesTuple;
    }
    else
    {
        alias TypeTuple!(BaseTypeTuple!(T)[0],
                         BaseClassesTuple!(BaseTypeTuple!(T)[0]))
            BaseClassesTuple;
    }
}

/**
 * Get a $(D_PARAM TypeTuple) of $(I all) interfaces directly or
 * indirectly inherited by this class or interface. Interfaces do not
 * repeat if multiply implemented. $(D_PARAM InterfacesTuple!(Object))
 * yields the empty type tuple.
 *
 * Example:
 * ---
 * import std.traits, std.typetuple, std.stdio;
 * interface I1 { }
 * interface I2 { }
 * class A : I1, I2 { }
 * class B : A, I1 { }
 * class C : B { }
 *
 * void main()
 * {
 *     alias InterfacesTuple!(C) TL;
 *     writeln(typeid(TL));	// prints: (I1, I2)
 * }
 * ---
 */

template InterfacesTuple(T)
{
    static if (is(T == Object))
    {
        alias TypeTuple!() InterfacesTuple;
    }
    static if (is(BaseTypeTuple!(T)[0] == Object))
    {
        alias TypeTuple!(BaseTypeTuple!(T)[1 .. $]) InterfacesTuple;
    }
    else
    {
        alias NoDuplicates!(
            TypeTuple!(BaseTypeTuple!(T)[1 .. $], // direct interfaces
                       InterfacesTuple!(BaseTypeTuple!(T)[0])))
            InterfacesTuple;
    }
}

unittest
{
    interface I1 {}
    interface I2 {}
    {
        // doc example
        class A : I1, I2 { }
        class B : A, I1 { }
        class C : B { }
        alias InterfacesTuple!(C) TL;
        assert(is(TL[0] == I1) && is(TL[1] == I2));
    }
    class B1 : I1, I2 {}
    class B2 : B1, I1 {}
    class B3 : B2, I2 {}
    alias InterfacesTuple!(B3) TL;
    //
    assert(TL.length == 2);
    assert(is (TL[0] == I2));
    assert(is (TL[1] == I1));
}

/**
 * Get a $(D_PARAM TypeTuple) of $(I all) base classes of $(D_PARAM
 * T), in decreasing order, followed by $(D_PARAM T)'s
 * interfaces. $(D_PARAM TransitiveBaseTypeTuple!(Object)) yields the
 * empty type tuple.
 *
 * Example:
 * ---
 * import std.traits, std.typetuple, std.stdio;
 * interface I { }
 * class A { }
 * class B : A, I { }
 * class C : B { }
 *
 * void main()
 * {
 *     alias TransitiveBaseTypeTuple!(C) TL;
 *     writeln(typeid(TL));	// prints: (B,A,Object,I)
 * }
 * ---
 */

template TransitiveBaseTypeTuple(T)
{
    static if (is(T == Object))
        alias TypeTuple!() TransitiveBaseTypeTuple;
    else
        alias TypeTuple!(BaseClassesTuple!(T),
            InterfacesTuple!(T))
            TransitiveBaseTypeTuple;
}

unittest
{
    interface I1 {}
    interface I2 {}
    class B1 {}
    class B2 : B1, I1, I2 {}
    class B3 : B2, I1 {}
    alias TransitiveBaseTypeTuple!(B3) TL;
    assert(TL.length == 5);
    assert(is (TL[0] == B2));
    assert(is (TL[1] == B1));
    assert(is (TL[2] == Object));
    assert(is (TL[3] == I1));
    assert(is (TL[4] == I2));
    
    assert(TransitiveBaseTypeTuple!(Object).length == 0);
}

/**
Get the type that all types can be implicitly converted to. Useful
e.g. in figuring out an array type from a bunch of initializing
values. Returns $(D_PARAM void) if passed an empty list, or if the
types have no common type.

Example:

----
alias CommonType!(int, long, short) X;
assert(is(X == long));
alias CommonType!(int, char[], short) Y;
assert(is(Y == void));
----
*/
template CommonType(T...)
{
    static if (!T.length)
        alias void CommonType;
    else static if (T.length == 1)
        alias T[0] CommonType;
    else static if (is(typeof(true ? T[0] : T[1]) U))
        alias CommonType!(U, T[2 .. $]) CommonType;
    else
        alias void CommonType;
}

unittest
{
    alias CommonType!(int, long, short) X;
    assert(is(X == long));
    alias CommonType!(char[], int, long, short) Y;
    assert(is(Y == void), Y.stringof);
}

/**
 * Returns a tuple with all possible target types of an implicit
 * conversion of a value of type $(D_PARAM T).
 *
 * Important note:
 *
 * The possible targets are computed more conservatively than the D
 * 2.005 compiler does, eliminating all dangerous conversions. For
 * example, $(D_PARAM ImplicitConversionTargets!(double)) does not
 * include $(D_PARAM float).
 */

template ImplicitConversionTargets(T)
{
    static if (is(T == bool))
        alias TypeTuple!(byte, ubyte, short, ushort, int, uint, long, ulong,
            float, double, real, char, wchar, dchar)
            ImplicitConversionTargets;
    else static if (is(T == byte))
        alias TypeTuple!(short, ushort, int, uint, long, ulong,
            float, double, real, char, wchar, dchar)
            ImplicitConversionTargets;
    else static if (is(T == ubyte))
        alias TypeTuple!(short, ushort, int, uint, long, ulong,
            float, double, real, char, wchar, dchar)
            ImplicitConversionTargets;
    else static if (is(T == short))
        alias TypeTuple!(ushort, int, uint, long, ulong,
            float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == ushort))
        alias TypeTuple!(int, uint, long, ulong, float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == int))
        alias TypeTuple!(long, ulong, float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == uint))
        alias TypeTuple!(long, ulong, float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == long))
        alias TypeTuple!(float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == ulong))
        alias TypeTuple!(float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == float))
        alias TypeTuple!(double, real)
            ImplicitConversionTargets;
    else static if (is(T == double))
        alias TypeTuple!(real)
            ImplicitConversionTargets;
    else static if (is(T == char))
        alias TypeTuple!(wchar, dchar, byte, ubyte, short, ushort,
            int, uint, long, ulong, float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == wchar))
        alias TypeTuple!(wchar, dchar, short, ushort, int, uint, long, ulong,
            float, double, real)
            ImplicitConversionTargets;
    else static if (is(T == dchar))
        alias TypeTuple!(wchar, dchar, int, uint, long, ulong,
            float, double, real)
            ImplicitConversionTargets;
    else static if(is(T : Object))
        alias TransitiveBaseTypeTuple!(T) ImplicitConversionTargets;
    else static if (is(T : void*))
        alias TypeTuple!(void*) ImplicitConversionTargets;
    else
        alias TypeTuple!() ImplicitConversionTargets;
}

unittest
{
    assert(is(ImplicitConversionTargets!(double)[0] == real));
}

/**
 * Detect whether T is a built-in integral type
 */

template isIntegral(T)
{
    enum bool isIntegral =
	is(immutable(T) == immutable(byte)) ||
	is(immutable(T) == immutable(ubyte)) ||
	is(immutable(T) == immutable(short)) ||
	is(immutable(T) == immutable(ushort)) ||
	is(immutable(T) == immutable(int)) ||
	is(immutable(T) == immutable(uint)) ||
	is(immutable(T) == immutable(long)) ||
	is(immutable(T) == immutable(ulong));
}

unittest
{
    assert(isIntegral!(byte));
    assert(isIntegral!(const(byte)));
    assert(isIntegral!(immutable(byte)));
    assert(isIntegral!(shared(byte)));
    assert(isIntegral!(shared(const(byte))));

    assert(isIntegral!(ubyte));
    assert(isIntegral!(const(ubyte)));
    assert(isIntegral!(immutable(ubyte)));
    assert(isIntegral!(shared(ubyte)));
    assert(isIntegral!(shared(const(ubyte))));

    assert(isIntegral!(short));
    assert(isIntegral!(const(short)));
    assert(isIntegral!(immutable(short)));
    assert(isIntegral!(shared(short)));
    assert(isIntegral!(shared(const(short))));

    assert(isIntegral!(ushort));
    assert(isIntegral!(const(ushort)));
    assert(isIntegral!(immutable(ushort)));
    assert(isIntegral!(shared(ushort)));
    assert(isIntegral!(shared(const(ushort))));

    assert(isIntegral!(int));
    assert(isIntegral!(const(int)));
    assert(isIntegral!(immutable(int)));
    assert(isIntegral!(shared(int)));
    assert(isIntegral!(shared(const(int))));

    assert(isIntegral!(uint));
    assert(isIntegral!(const(uint)));
    assert(isIntegral!(immutable(uint)));
    assert(isIntegral!(shared(uint)));
    assert(isIntegral!(shared(const(uint))));

    assert(isIntegral!(long));
    assert(isIntegral!(const(long)));
    assert(isIntegral!(immutable(long)));
    assert(isIntegral!(shared(long)));
    assert(isIntegral!(shared(const(long))));

    assert(isIntegral!(ulong));
    assert(isIntegral!(const(ulong)));
    assert(isIntegral!(immutable(ulong)));
    assert(isIntegral!(shared(ulong)));
    assert(isIntegral!(shared(const(ulong))));

    assert(!isIntegral!(float));
}

/**
 * Detect whether T is a built-in floating point type
 */

template isFloatingPoint(T)
{
    enum bool isFloatingPoint =
	is(immutable(T) == immutable(float)) ||
	is(immutable(T) == immutable(double)) ||
	is(immutable(T) == immutable(real));
}

unittest
{
    assert(isFloatingPoint!(float));
    assert(isFloatingPoint!(const(float)));
    assert(isFloatingPoint!(immutable(float)));
    assert(isFloatingPoint!(shared(float)));
    assert(isFloatingPoint!(shared(const(float))));

    assert(isFloatingPoint!(double));
    assert(isFloatingPoint!(const(double)));
    assert(isFloatingPoint!(immutable(double)));
    assert(isFloatingPoint!(shared(double)));
    assert(isFloatingPoint!(shared(const(double))));

    assert(isFloatingPoint!(real));
    assert(isFloatingPoint!(const(real)));
    assert(isFloatingPoint!(immutable(real)));
    assert(isFloatingPoint!(shared(real)));
    assert(isFloatingPoint!(shared(const(real))));

    assert(!isFloatingPoint!(int));
}

/**
 * Detect whether T is a built-in numeric type
 */

template isNumeric(T)
{
    enum bool isNumeric = isIntegral!(T) || isFloatingPoint!(T);
}

/**
 * Detect whether T is one of the built-in string types
 */

template isSomeString(T)
{
    enum bool isSomeString = is(T : const(char[]))
        || is(T : const(wchar[])) || is(T : const(dchar[]));
}

static assert(!isSomeString!(int));
static assert(!isSomeString!(int[]));
static assert(!isSomeString!(byte[]));
static assert(isSomeString!(char[]));
static assert(isSomeString!(dchar[]));
static assert(isSomeString!(string));
static assert(isSomeString!(wstring));
static assert(isSomeString!(dstring));
static assert(isSomeString!(char[4]));

/**
 * Detect whether T is an associative array type
 */

template isAssociativeArray(T)
{
    enum bool isAssociativeArray =
        is(typeof(T.keys)) && is(typeof(T.values));
}

static assert(!isAssociativeArray!(int));
static assert(!isAssociativeArray!(int[]));
static assert(isAssociativeArray!(int[int]));
static assert(isAssociativeArray!(int[string]));
static assert(isAssociativeArray!(invariant(char[5])[int]));

/**
 * Detect whether type T is a static array.
 */
template isStaticArray(T : U[N], U, size_t N)
{
    enum bool isStaticArray = true;
}

template isStaticArray(T)
{
    enum bool isStaticArray = false;
}

static assert (isStaticArray!(int[51]));
static assert (isStaticArray!(int[][2]));
static assert (isStaticArray!(char[][int][11]));
static assert (!isStaticArray!(const(int)[]));
static assert (!isStaticArray!(invariant(int)[]));
static assert (!isStaticArray!(const(int)[4][]));
static assert (!isStaticArray!(int[]));
static assert (!isStaticArray!(int[char]));
static assert (!isStaticArray!(int[1][]));
static assert (isStaticArray!(invariant char[13u]));
static assert (isStaticArray!(const(real)[1]));
static assert (isStaticArray!(const(real)[1][1]));
//static assert (isStaticArray!(typeof("string literal")));
static assert (isStaticArray!(void[0]));
static assert (!isStaticArray!(int[int]));
static assert (!isStaticArray!(int));

/**
 * Detect whether type T is a dynamic array.
 */
template isDynamicArray(T, U = void)
{
    enum bool isDynamicArray = false;
}

template isDynamicArray(T : U[], U)
{
  enum bool isDynamicArray = !isStaticArray!(T);
}

static assert(isDynamicArray!(int[]));
static assert(!isDynamicArray!(int[5]));

/**
 * Detect whether type T is an array.
 */
template isArray(T)
{
    enum bool isArray = isStaticArray!(T) || isDynamicArray!(T);
}

static assert(isArray!(int[]));
static assert(isArray!(int[5]));
static assert(!isArray!(uint));
static assert(!isArray!(uint[uint]));
static assert(isArray!(void[]));


/**
 * Tells whether the tuple T is an expression tuple.
 */
template isExpressionTuple(T ...)
{
    static if (is(void function(T)))
	enum bool isExpressionTuple = false;
    else
	enum bool isExpressionTuple = true;
}

/**
 * Returns the corresponding unsigned type for T. T must be a numeric
 * integral type, otherwise a compile-time error occurs.
 */

template unsigned(T) {
    static if (is(T == byte)) alias ubyte unsigned;
    else static if (is(T == short)) alias ushort unsigned;
    else static if (is(T == int)) alias uint unsigned;
    else static if (is(T == long)) alias ulong unsigned;
    else static if (is(T == ubyte)) alias ubyte unsigned;
    else static if (is(T == ushort)) alias ushort unsigned;
    else static if (is(T == uint)) alias uint unsigned;
    else static if (is(T == ulong)) alias ulong unsigned;
    else static if (is(T == char)) alias char unsigned;
    else static if (is(T == wchar)) alias wchar unsigned;
    else static if (is(T == dchar)) alias dchar unsigned;
    else static if(is(T == enum)) {
        static if (T.sizeof == 1) alias ubyte unsigned;
        else static if (T.sizeof == 2) alias ushort unsigned;
        else static if (T.sizeof == 4) alias uint unsigned;
        else static if (T.sizeof == 8) alias ulong unsigned;
        else static assert(false, "Type " ~ T.stringof
                           ~ " does not have an unsigned counterpart");
    }
    else static assert(false, "Type " ~ T.stringof
                       ~ " does not have an unsigned counterpart");
}

unittest
{
    alias unsigned!(int) U;
    assert(is(U == uint));
}

/******
 * Returns the mutable version of the type T.
 */

template Mutable(T)
{
    static if (is(T U == const(U)))
	alias U Mutable;
    else static if (is(T U == invariant(U)))
	alias U Mutable;
    else
	alias T Mutable;
}

/**
Returns the most negative value of the numeric type T.
*/

template mostNegative(T)
{
    static if (T.min == 0) enum byte mostNegative = 0;
    else static if (T.min > 0) enum mostNegative = -T.max;
    else enum mostNegative = T.min;
}

unittest
{
    static assert(mostNegative!(float) == -float.max);
    static assert(mostNegative!(uint) == 0);
    static assert(mostNegative!(long) == long.min);
}
