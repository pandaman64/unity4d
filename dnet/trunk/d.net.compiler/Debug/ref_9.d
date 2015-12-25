int i;
ref int f() {
   return i;
}
void main() {
   assert((f()++) == 0);
   assert(i == 1);
}
