void fun(int i) {                   
     bool ok = false;               
     switch (i)                     
     {                              
         case 3:                    
             ok = true;             
             break;                 
         case 42:                   
             ok = true;             
             break;                 
         default:                   
     }                              
     assert(ok, "ok");            
}                                   
void main() {                       
    fun(3); fun(42);                
}
