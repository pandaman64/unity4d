import System;
void print(A...)(A a) {
   foreach(t; a) {
       Console.WriteLine(t);
   }
}
void main() {
    print("Hello".sys, 1, 3.14159);
}
