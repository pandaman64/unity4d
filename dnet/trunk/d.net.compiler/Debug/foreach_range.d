int a[] = [ 10, 11, 12 ];  
int b[3];                  
void main() {              
   int begin;              
   int end;                
   end = 3;                
   foreach(i; begin..end){ 
       b[i] = a[i];        
   }                       
   assert(b[0] == 10);     
   assert(b[1] == 11);     
   assert(b[2] == 12);     
}                          
