void main() {              
   int a[] = new int[3];   
   foreach_reverse(i, ref v; a){
       v = i;              
   }                       
   foreach(i, v; a){       
       assert(v == i);     
   }                       
}                          
