int x;
template Foo(alias X)
{
    static int* p = &X;
}
void main()
{
    alias Foo!(x) bar;
    *bar.p = 3;		// set x to 3
    assert(x == 3);
    static int y;
    alias Foo!(y) abc;
    *abc.p = 3;		// set y to 3
    assert(y == 3);
}
