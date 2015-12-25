void main() {              
   int a;                  
   int b = 2;              
   int c;                  
   c = (a = 1, b++);       
   assert(a == 1);         
   assert(c == 2);         
   assert(b == 3);         
}                          
