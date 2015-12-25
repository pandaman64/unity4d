void main() {                            
     int i = 2;                          
     i >>>= 1;                           
     assert(i == 1);                     
     i = 1024;                           
     assert((i >>> 10) == 1);            
}                                        
