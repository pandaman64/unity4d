struct X {
    int a[];
}
void main() {
    X x[int];
    x[0] = X();
    x[0].a ~= 42;
    assert(x[0].a.length == 1);
}
