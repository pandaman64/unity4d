void main() {
   int a[] = [2, 1, 4];
   a.sort;             
   assert(a[0] == 1);  
   assert(a[1] == 2);  
   assert(a[2] == 4);  
   a.reverse;          
   assert(a[0] == 4);  
   assert(a[1] == 2);  
   assert(a[2] == 1);  
}
