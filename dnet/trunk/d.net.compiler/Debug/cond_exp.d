int foo(int i = 42) {                    
     return i;                           
}                                        
void main() {                            
     int x = foo() > 0 ? 1 : -1;         
     assert(x == 1);                     
     x = foo(-1) > 0 ? 1 : -1;           
     assert(x == -1);                    
}
