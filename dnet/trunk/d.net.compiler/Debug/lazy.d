void f(lazy int dg) {
     assert(dg() == 42);
}
int g(int i) { return i; }
void main() {
     f(g(42));
}
