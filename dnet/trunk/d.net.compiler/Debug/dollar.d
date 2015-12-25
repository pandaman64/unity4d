void main()                        
{                                  
    double d[] = [1.1, 2.2, 3.3];  
    double[] a = d[0..$];          
    assert(a.length == d.length);  
    a = d[1..$];                   
    assert(a.length==d.length - 1);
    double x = d[length - 1];      
    assert(x == 3.3);              
}
