struct X {
    int a[];
}
void main() {
    X x;
    x = X();
    x.a ~= 42;
    assert(x.a.length == 1);
}
