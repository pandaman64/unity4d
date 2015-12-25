void main() {                            
     int a[5] = [5, 4, 3, 2, 1];         
     int* p = &a[2];                     
     ++p;                                
     assert(*p == 2);                    
}                                        
