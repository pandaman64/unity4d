bool ok = false;                    
void fun(int i) {                   
     int j = 15;                    
     switch (i)                     
     {                              
        case 2:                     
        case 3:                     
             break;                 
        case 42:                    
             break;                 
        default:                    
        case j:                     
            ok = true;              
            break;                  
     }                              
     assert(ok, "ok");            
}                                   
void main() {                       
    fun(13);                        
    ok = false;                     
    fun(15);                        
}
