int delegate(int) dg;
int foo = 42;
class Test {
 int i = 123;
 int run(int j) {
     foo = i + j;
     return j;
 }
 static void hide() { foo = 13; }
}
void main() {
 Test t = new Test;
 dg = &t.run;
 assert(foo == 42);
 assert(t.i == 123);
 dg(7);
 assert(foo == 130);
 void (*pf)() = &Test.hide;
 pf();
 assert(foo == 13);
}
