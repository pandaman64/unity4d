struct X {
   int a[];
   double d;
}
struct Y {
   double d;
   X x;
}
void main() {
    Y y[int];
    y[0] = Y();
    y[0].x.a ~= 42;
    assert(y[0].x.a.length == 1);
}
