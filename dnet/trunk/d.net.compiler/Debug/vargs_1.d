import System;           
class Test {             
  override string toString() {
     return "cool!";   
  }                      
}                        
void main() {            
  Object obj = new Test; 
  Console.WriteLine("test {0} {1} {2}".sys, 1, "two".sys, obj.toString().sys); 
}                        
