int f()
{
    static int i = 42;
    return ++i;
}
void main()
{
   static int i = 13;
   f();
   assert(f() == 44);
}
