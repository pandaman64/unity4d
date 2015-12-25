struct Foobah {                          
     int x;                              
     double y;                           
}                                        
void main() {                            
     Foobah foo;                         
     foo.y = 1.2345;                     
     assert(foo.y == 1.2345);            
}
