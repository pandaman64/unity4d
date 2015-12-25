void main() {          
int i;                 
loop1:                 
for(; i != 10; ++i) {  
   int j;              
   assert(j == 0);     
   for(; j != 5; ++j) {
       if (j == 3) {   
           continue loop1;
       }               
   }                   
   assert(j == 3);     
}                      
assert(i == 10);       
}                      
