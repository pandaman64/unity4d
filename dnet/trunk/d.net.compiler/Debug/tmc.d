class Test {                       
   int foo(T)(T arg) {             
       return arg + 40;            
   }                               
}                                  
void main()                        
{                                  
   Test t = new Test;              
   assert(t.foo(2) == 42);         
}
