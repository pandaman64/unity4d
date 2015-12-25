void main() {                  
   class Base {                
       public int ok = -1;     
       public this(int) {      
           assert(ok == -1);   
           ok = 1;             
       }                       
   }                           
   class Derived : Base {      
       public this(int i){     
           assert(ok == -1);   
           super(i);           
       }                       
   }                           
   Base b = new Derived(42);   
   assert(b.ok == 1);          
}                              
