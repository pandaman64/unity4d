import System;
void main() {
   int a[5];
   a[2..4] = [ 11, 12, 13, 14, 15, 16, 17, 18 ]; 
   assert(a[0] == 0);
   assert(a[1] == 0);
   assert(a[2] == 11);
   assert(a[3] == 12);
   assert(a[4] == 0);
}
