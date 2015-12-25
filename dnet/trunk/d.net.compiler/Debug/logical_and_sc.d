class C {              
   int i;              
   bool f() {          
       return i > 0;   
   }                   
}                      
int main()             
{                      
   C c;                
   if (c && c.f()) {   
       assert(false);  
   }                   
   assert(!c || c.f());
   return 0;           
}