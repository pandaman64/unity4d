class Test {
   int i;
   void f(ref int value) { 
       i = value;
   }
}
void main() { 
   Test t = new Test;
   int k = 42;
   t.f(k);
   assert(t.i == 42);
}
