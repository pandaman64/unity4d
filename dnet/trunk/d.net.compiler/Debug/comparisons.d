int main()             
{                      
    int i = 1;         
    int j = 2;         
    int k = 2;         
    assert(i < j);     
    assert(i <= j);    
    assert(k <= j);    
    assert(k > i);     
    assert(k >= i);    
    assert(k >= j);    
    assert(k == j);    
    assert(i != j);    
    string s ="hell";    
    assert(s!="hello");  
    s ~= "o";            
    assert(s=="hello");  
    return 0;              
}