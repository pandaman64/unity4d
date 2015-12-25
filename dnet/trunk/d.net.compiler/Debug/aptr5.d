void main() {                            
     int a[] = [5, 4, 3, 2, 1];          
     int b[] = a[1..5];                  
     int* p = b.ptr;                     
     ++p;                                
     assert(*p == 3);                    
}                                        
