void main() {
   int a[] = [1, 2, 4];
   int b[];            
   b = [3, 5];         
   b = a ~ b;          
   assert(b.length==5);
   assert(b[0] == a[0]);
}
