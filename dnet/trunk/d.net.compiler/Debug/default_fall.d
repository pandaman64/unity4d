void fun(int i) {                   
     bool ok = false;               
     switch (i)                     
     {                              
        case 2:                     
        case 3:                     
             break;                 
        case 42:                    
             break;                 
        default:                    
        case 15:                    
            ok = true;              
            break;                  
     }                              
     assert(ok, "ok");            
}                                   
void main() {                       
    fun(13);                        
}
