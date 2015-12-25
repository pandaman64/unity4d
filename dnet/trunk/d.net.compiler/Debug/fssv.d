int f()
{
    static int i = 42;
    return ++i;
}
void main()
{
    f();
    assert(f() == 44);
}
