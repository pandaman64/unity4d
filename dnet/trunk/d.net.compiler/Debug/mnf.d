class Test {
   int i;
   int j = 13;
   public void outer() {
       int j = 1;
       i = 41;
       void inner() { 
           assert(i + j == 42);
       }
       inner();
   }
}
void main() {
   Test t = new Test;
   t.outer();
}
