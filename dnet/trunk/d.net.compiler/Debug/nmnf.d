   void outer() {
       int j = 1;
       void inner() { 
   int i = 41;
           assert(i + j == 42);
       }
       inner();
   }
void main() {
   outer();
}
