void main() {                          
   int a[] = [1, 2, 6, 5, 4, 3, 7];    
   int s[] = a[2..6];                  
   s.sort;                             
   assert(a[2] == 3);                  
   assert(a[3] == 4);                  
   assert(a[4] == 5);                  
}
