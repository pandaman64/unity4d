void main() {
   int a[] = [1, 2, 3];
   int s[] = a[0..$];
   s ~= s;
   assert(s.length == 6);
}
