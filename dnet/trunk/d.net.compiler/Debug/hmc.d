class Base {                       
   public int foo(int arg) {       
       return 0;                   
   }                               
   public long foo(long arg) {     
       return arg;                 
   }                               
}                                  
class Derived : Base {             
   public override long foo(long i){
       return i;                   
   }                               
}                                  
void main()                        
{  bool ok = false;                
   Base b = new Derived;           
   try {                           
       assert(b.foo(42) != 42);    
   }                               
   catch (Exception) {             
       ok = true;                  
   }                               
   assert(true);                   
}
