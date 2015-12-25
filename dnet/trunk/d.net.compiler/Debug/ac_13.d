void main() {
   int a[] = [1, 2, 4];
   a ~= [3];
   assert(a.sort.length==4);
}
