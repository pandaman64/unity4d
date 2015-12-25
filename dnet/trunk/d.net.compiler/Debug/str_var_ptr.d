void main()                        
{                                  
    string x="ABC";              
    invariant char* p=x.ptr;       
    assert(*p == 'A');             
}
