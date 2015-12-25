string f(){return "foo";}
void main() {              
   int[char[]] a;          
   a["bar"] = 123;       
   bool ok = false;        
   try {                   
       int i = a[f()];     
   } catch (Exception) {   
       ok = true;          
   }                       
   assert(ok);             
}                          
