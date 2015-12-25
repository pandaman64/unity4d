void main() {              
   int[string] a;          
   a["3"] = 45;          
   a["44"] = 32;         
   string[] keys = a.keys; 
   assert(keys.length == 2);
   assert(keys[0] == "3");
   assert(keys[1] == "44");
}
