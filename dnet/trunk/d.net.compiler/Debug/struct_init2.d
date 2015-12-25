struct Foobah {                          
     int x = 123;                        
     double y;                           
}                                        
void main() {                            
     Foobah foo;                         
     assert(foo.x == 123);               
     assert(foo.y == 0.0);               
}
