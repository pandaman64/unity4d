enum Fu : byte {           
   bah = 100,              
   baz                     
}                          
void main() {              
   Fu fu;                  
   assert(fu == 100);      
   fu = Fu.baz;            
   assert(fu == 101);      
}                          
