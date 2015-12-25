struct X {
    int a[];
}
void f(X x) {
   foreach(i; x.a) {
       assert(i == 1);
   }
   assert(x.a.length == 3);
}
void main() {
    X x;
    x.a = [1, 1, 1];
}
