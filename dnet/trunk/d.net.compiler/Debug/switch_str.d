void fun(string s) {                
     bool ok = false;               
     switch (s) {                   
     case "hello":                
        ok = true;                  
        break;                      
     default:                       
        assert(false);              
        break;                      
     }                              
     assert(ok, "ok");            
}                                   
void main() {                       
    fun("hello");                 
}
