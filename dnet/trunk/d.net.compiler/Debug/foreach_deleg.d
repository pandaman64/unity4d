struct S {
   int i;
   double d;
   int j;
   int foo(int delegate(ref int) dg) { 
       return dg(j);
   }
}
void main() {
   S s = { 13, 3.14159, 2 };
   foreach(ref x; &s.foo) {
       x = 4;
   }
   assert(s.j == 4);
}
