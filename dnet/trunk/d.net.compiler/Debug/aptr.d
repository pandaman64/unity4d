void main() {                            
     int a[ ] = [5, 4, 3, 2, 1];         
     int* p = a.ptr;                     
     ++p;                                
     assert(*p == 4);                    
}                                        
