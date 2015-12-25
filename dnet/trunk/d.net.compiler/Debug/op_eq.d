   struct Foo {                    
       int i;                      
       this(int j) { i = j; }      
       bool opEquals(Foo other) {  
           return i == other.i;    
       }                           
   }                               
   int main()                      
   {                               
       Foo f = new Foo(42);        
       Foo g = new Foo(42);        
       Foo h = new Foo(13);        
       assert(f == g);             
       assert(f != h);             
       return 0;                   
   }
