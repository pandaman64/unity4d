void fun(int i) {                   
     bool ok = false;               
     switch (i)                     
     {                              
     default:                       
        ok = true; break;           
     }                              
     assert(ok, "ok");            
}                                   
void main() {                       
    fun(3); fun(42);                
}
