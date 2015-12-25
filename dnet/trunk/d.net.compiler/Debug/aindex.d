void main() {
   int a[] = [1, 2, 3];
   int i;
   a[i + 0] = a[1 + i] = a[2] = 4;
   assert(a[0] == 4);
   assert(a[1] == 4);
   assert(a[2] == 4);
}
