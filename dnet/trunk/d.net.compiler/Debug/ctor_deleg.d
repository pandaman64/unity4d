class Test {
   int i = 13;
   this() { }
   this(int j) { i = j; this(); }
}
void main() {
   Test t = new Test(42);
   assert(t.i == 42);
}
