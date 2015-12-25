int i;                             
void main()                        
{                                  
   int j;                          
   void foo() {                    
       void bar() {                
           ++i;                    
           ++j;                    
       }                           
       bar();                      
   }                               
   foo();                          
   assert(i == 1);                 
   foo();                          
   assert(i == 2);                 
   assert(j == 2);                 
}
