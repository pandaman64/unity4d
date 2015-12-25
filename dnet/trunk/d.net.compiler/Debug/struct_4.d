struct Foobah(T) {                       
     T x;                                
     double y;                           
}                                        
void main() {                            
     int i = 2;                          
     Foobah!(int) foo = { i, 3.0 };      
     assert(foo.x == 2);                 
     assert(foo.y == 3.0);               
}
