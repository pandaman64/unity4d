class Base
{
   static int done = -1;
   this() { done = 0; }
   ~this(){ done = 1; }
}
class Derived : public Base
{
   ~this() { }
}
void main()
{
   Object obj = new Derived;
   delete obj;
   assert(Base.done == 1);
}
