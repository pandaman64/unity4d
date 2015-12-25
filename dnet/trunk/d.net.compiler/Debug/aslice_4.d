void main() {                          
   int a[] = [1, 2, 3, 4, 5, 6];       
   int s[] = a[2..5];                  
   assert(s.length == 3);              
   int z[] = a[2..10];                 
   assert(z.length == 4);              
}
