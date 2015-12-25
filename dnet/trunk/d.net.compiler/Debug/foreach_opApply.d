struct S {
   int i;
   double d;
   int j;
   int opApply(int delegate(ref int) dg) { 
       return dg(j);
   }
}
void main() {
   S s = { 13, 3.14159, 2 };
   foreach(ref x; s) {
       x = 4;  
   }
   assert(s.j == 4);
}
