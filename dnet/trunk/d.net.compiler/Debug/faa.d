void main() {              
   int[char[]] a;          
   a["fubar"] = 123;     
   a["bubah"] = 456;     
   int[] b = new int[2];   
   int k = 0;              
   foreach(i; a) {         
       b[k++] = i;         
   }                       
   assert(b[0] == 123);    
   assert(b[1] == 456);    
}                          
