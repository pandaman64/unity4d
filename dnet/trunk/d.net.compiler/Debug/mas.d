struct X { int i; }
struct Y { X a[2]; }
void main() {
   Y y;
   assert(y.a[0].i == 0);
   assert(y.a[1].i == 0);
}
