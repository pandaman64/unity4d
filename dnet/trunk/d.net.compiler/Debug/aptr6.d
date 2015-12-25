void main() {                            
     int a[] = [5, 4, 3, 2, 1];          
     int b[] = a[1..5];                  
     int* p = &b[1];                     
     ++p;                                
     assert(*p == 2);                    
     int i = 42;                         
     p = &i;                             
     assert(*p == 42);                   
}                                        
