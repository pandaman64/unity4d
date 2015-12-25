import System;
void main() {
   int a[5];
   a[2] = 1; 
   a[3] = 2; 
   assert(a[0] == 0);
   assert(a[1] == 0);
   assert(a[2] == 1);
   assert(a[3] == 2);
   assert(a[4] == 0);
}
