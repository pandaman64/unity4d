uint fib(uint n) {
   uint iter(uint i, uint fib_1, uint fib_2) {
       return i == n ? fib_2 : iter(i + 1, fib_1 + fib_2, fib_1);
   }
   return iter(0, 1, 0);
}
void main() {
   assert(fib(1) == 1);
   assert(fib(2) == 1);
   assert(fib(3) == 2);
   assert(fib(4) == 3);
   assert(fib(5) == 5);
}
