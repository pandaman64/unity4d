void main() {                          
   int a[] = [1, 2, 3, 4, 5, 6, 7];    
   a.length = 8;                       
   int s[] = a[2..5];                  
   assert(s.length == 3);              
   s.length = 5;                       
   assert(s[0] == 3);                  
   s[0] = 2;                           
   assert(a[2] == 2);                  
   s.length = 10;                      
   s[0] = 4;                           
   assert(a[2] == 2);                  
}
