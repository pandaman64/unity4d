void fun(int i) {                   
     switch (i) {                   
        case 2:                     
            break;                  
     }                              
}                                   
void main() {                       
    bool ok = false;                
    try {                           
        fun(13);                    
    }                               
    catch (Exception e) {           
        ok = true;                  
    }                               
    assert(ok);                     
}
