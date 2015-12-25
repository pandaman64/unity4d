int a[] = [ 10, 11, 12 ];  
int b[3];                  
void main() {              
   int i = 0;              
   foreach_reverse(int v; a){
       b[i++] = v;         
   }                       
   assert(b[0] == 12);     
   assert(b[1] == 11);     
   assert(b[2] == 10);     
}                          
