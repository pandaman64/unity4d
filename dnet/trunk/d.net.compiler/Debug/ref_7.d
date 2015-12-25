int i;
ref int f() {
   return i;
}
void main() {
   assert(++f() == 1);
}
