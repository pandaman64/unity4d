void main() {                            
     int a[ ] = [5, 4, 3, 2, 1];         
     int* p = &a[3];                     
     ++p;                                
     assert(*p == 1);                    
}                                        
