void main() {              
   int[char[]] a;          
   int len = a.length;     
   assert(len == 0);       
   a["a"] = 123;         
   len = a.length;         
   assert(len == 1);       
   a["b"] = 124;         
   len = a.length;         
   assert(len == 2);       
}                          
