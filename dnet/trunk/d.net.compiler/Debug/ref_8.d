int i = 1;
ref int f() {
   return i;
}
void main() {
   assert((f() += 1) == 2);
}
