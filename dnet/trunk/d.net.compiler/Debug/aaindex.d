void main() {
   int a[string] = ["one" : 1, "two" : 2];
   a["one"] = a["two"] = 3;
   assert(a["one"] == 3);
   assert(a["two"] == 3);
}
