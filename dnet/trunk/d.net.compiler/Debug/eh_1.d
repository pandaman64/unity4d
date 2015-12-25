void main() {
 int i = 1;  
 try {       
     i = 2;  
     throw new Exception("bang");
 }
 catch (Exception) 
 {
     i = 4;   
 }
 assert(i == 4);
}
