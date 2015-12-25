struct Foobah {                          
     static int x = 42;                  
     static int y = 13;                  
     double z;                           
}                                        
void main() {                            
     Foobah foo = { 3.14 };              
     assert(foo.x == 42);                
     assert(foo.y == 13);                
}
