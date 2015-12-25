import System;                          
void main() {                          
   string greet = "I say Hello";     
   invariant char msg[] = greet[6..$]; 
   assert(msg.length == 5);            
   string foo = greet[6..11];          
   assert(foo.length == 5);            
}
