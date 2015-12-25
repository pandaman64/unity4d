void main() {              
   int[char[]] a;          
   a["fubar"] = 123;     
   int i = a["fubar"];   
   assert(i == 123);       
}                          
