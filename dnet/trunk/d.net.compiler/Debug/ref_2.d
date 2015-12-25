int[] x = [1, 2, 3];
void bar(ref int[] a) { 
   a = x;
}
void main() { 
   int b[];
   assert(b.length == 0);
   bar(b);
   assert(b.length == 3);
}
