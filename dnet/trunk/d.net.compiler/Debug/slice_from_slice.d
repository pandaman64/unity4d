void main() {                          
   int a[] = [1, 2, 6, 5, 4, 3, 7];    
   int s[] = a[2..6];                  
   int z[] = s[0..4];                  
   z = s[0..3];                        
   assert(z.length == 3);              
}
