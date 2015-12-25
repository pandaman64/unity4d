import System;                                             
class TestOne {                                            
   int idata;                                              
   double ddata;                                           
   void print() {                                          
       Console.WriteLine("{0}: {1}, {2}".sys, this, idata, ddata);
    }                                                      
}                                                          
class TestTwo {                                            
    int data;                                              
    this() {                                               
        data = 42;                                         
    }                                                      
    void print() {                                         
        Console.WriteLine("{0}: {1}".sys, this, data);  
    }                                                      
}                                                          
int main() {                                               
   TestOne t1 = new TestOne;                               
   TestTwo t2 = new TestTwo();                             
   t1.print();                                             
   t2.print();                                             
   t1.idata = cast(int)(++t1.ddata) + t2.data;             
   t1.print();                                             
   assert (--t1.idata == 42);                              
   return 0;                                               
}
