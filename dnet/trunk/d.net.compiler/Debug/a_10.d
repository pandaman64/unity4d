void main() {
   int a[] = [1, 2, 4];
   int b[];            
   b = [3, 5];         
   b ~= a;             
   assert(b.length==5);
}
