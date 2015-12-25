string f(){return "foo";}
void main() {              
   int[char[]] a;          
   a["foo"] = 123;       
   int i = a[f()];         
   assert(i == 123);       
}                          
