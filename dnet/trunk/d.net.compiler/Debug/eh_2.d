int main() { 
 int i = 1;  
 try {       
     i = 2;  
     throw new Exception("bang");
 }
 catch (Exception e) 
 {
     i = 4;   
 }
 finally { i = 5; }
 assert(i == 5);
 return 0;}
