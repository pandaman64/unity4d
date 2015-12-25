void main() {              
   string[string] a;       
   a["3"] = "45";      
   a["44"] = "32";     
   string[] values = a.values; 
   assert(values.length == 2); 
   assert(values[0] == "45");
   assert(values[1] == "32");
}
