void fun(int i) {                   
    bool ok = false;                
    switch (i)                      
    {                               
    case 3:                         
        try {                       
             ok = true;             
        } catch(Exception) {        
             break;                 
        }                           
        break;                      
    case 42:                        
        goto case 3;                
    default:                        
    }                               
    assert(ok, "ok");             
}                                   
void main() {                       
    fun(3); fun(42);                
}
