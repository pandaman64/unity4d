bool ok = false;
class Test {
   invariant() { ok = true; }
}
void main() {
   Test t = new Test;
   assert(t);
   assert(ok);
}
