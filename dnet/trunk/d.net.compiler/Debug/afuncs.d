int[] foo() {                            
     int a[5] = [5, 4, 3, 2, 1];         
     return a[1..5];                     
}                                        
void bar(int[] b) {                      
     assert(b.length == 4);              
}                                        
void main() {                            
     int c[] = foo();                    
     bar(c);                             
     int d[];                            
     d = foo().sort;                     
     assert(d[0] == 1);                  
     assert(d[3] == 4);                  
}                                        
