int a[string] = ["foo" : 1, "bar" : 2];
void main() {
    assert("foo" in a);
    string b = "bar";
    a.remove(b);
    assert(!(b in a));
}
