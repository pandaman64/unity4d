struct X { int i; }
X a[2];
void main() {
   assert(a[0].i == 0);
   assert(a[1].i == 0);
   a[0].i = 1;
   a[1].i = 1;
   foreach(s; a) {
       assert(s.i == 1);
   }
}
