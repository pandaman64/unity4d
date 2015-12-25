void main() {              
   class Base {            
       public void foo() { 
           assert(false);  
       }                   
       public void bar() { 
       }                   
   }                       
   class Derived : Base {  
       override void foo(){
       }                   
       public void bar() { 
           assert(false);  
       }                   
   }                       
   Base b = new Derived;   
   b.foo();                
   b.bar();                
}                          
