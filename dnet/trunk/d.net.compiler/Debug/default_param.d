void foo(int i = 42) {                   
     assert(i == 42);                    
}                                        
void bar(int i = 42) {                   
     assert(i == 13);                    
}                                        
void main() {                            
     foo();                              
     bar(13);                            
}
