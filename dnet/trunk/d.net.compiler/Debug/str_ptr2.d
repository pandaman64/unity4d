void main()                        
{                                  
   immutable (char)* p;            
   p = "ABC".ptr;                
   ++p;                            
   assert(*p == 'B');              
}
