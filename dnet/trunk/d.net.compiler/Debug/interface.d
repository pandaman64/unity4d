uint len = 0;
interface Foo {
   void exec(int []);
}
class Test : Foo {
   public void exec(int[] a) {
       len = a.length;
   }
}
void main() {
   int x[] = [1, 2, 3];
   Test f = new Test;
   f.exec(x);
   assert(len == 3);
}
