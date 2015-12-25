int b[3];                  
void main() {              
   foreach(int i, int v; [ 10, 11, 12 ]) {
       b[i] = v;           
   }                       
   assert(b[0] == 10);     
   assert(b[1] == 11);     
   assert(b[2] == 12);     
}                          
