import System;
void main() {
   int a[5];
   a[1..4] = 42; 
   assert(a[0] == 0);
   assert(a[1] == 42);
   assert(a[2] == 42);
   assert(a[3] == 42);
   assert(a[4] == 0);
}
