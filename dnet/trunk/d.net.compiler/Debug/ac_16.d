void main() {
   int a[] = [1, 2, 3];
   int s[] = a[0..$];
   a ~= s;
   assert(a.length == 6);
}
