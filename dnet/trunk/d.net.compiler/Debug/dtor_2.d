class Base
{
   static int done = -1;
   this() { done = 0; }
   ~this(){ ++done; }
   static ~this() { assert(Base.done == 1); }
}
class Derived : public Base
{
   ~this() { }
}
void main()
{
   scope Object obj = new Derived;
}
