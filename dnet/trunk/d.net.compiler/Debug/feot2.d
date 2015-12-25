import System;
void print(A...)(A a) {
   foreach(i, t; a) {
       Console.WriteLine(i);
       Console.WriteLine(t);
   }
}
void main() {
    print("Hello".sys, 1, 3.14159);
}
