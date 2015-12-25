struct X { int i; }
class Test {
   double d;
   Test t;
   X myx;
   ref double fun() { 
       return d;
   }
   ref Test test() { 
       return t;
   }
   ref X x() {
       return myx;
   }
}
void main() { 
   Test t = new Test;
   t.fun() = 3.14159;
   t.test() = new Test();
   assert(t.test().d == 0);
   assert(t.d == 3.14159);
   X x;
   x.i = 42;
   t.x() = x;
   assert(t.myx.i == 42);
}
