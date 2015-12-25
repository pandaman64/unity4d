import System;             
void main() {              
   int a[] = [1, 2, 3];    
   int s[] = a[0..$];      
   foreach_reverse(i; s ~ s){
       Console.WriteLine(i);
   }                       
}                          
