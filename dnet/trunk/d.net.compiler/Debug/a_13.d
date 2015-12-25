void f(double a[]) {
    assert(a.length == 3);
}
void main() {
   double a[] = [0.0, 1.1, 2.2, 3.3];
   double b[] = a[1..$];
   f(a[1..$]);
   f(b);
}
