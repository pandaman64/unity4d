void main() {              
   int[char[]] a;          
   a["fubar"] = 123;     
   a["bubah"] = 456;     
   foreach(ref i; a) {     
       if (i==123) i = 13; 
       break;              
   }                       
   assert(a["fubar"]==13);
}                          
