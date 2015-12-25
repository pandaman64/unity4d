int main()                     
{                              
    int i = 1;                 
    int j = 2;                 
    assert(i == 1 || false);   
    assert(i == 1 || j == 2);  
    assert(!(i==0 || j==0));   
    return 0;                  
}