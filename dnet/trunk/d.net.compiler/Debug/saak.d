void main() {              
   int[int] a;             
   a[3] = 11;              
   a[4] = 12;              
   int[] keys = a.keys;    
   assert(keys.length == 2);
   assert(keys[0] == 3);   
   assert(keys[1] == 4);   
}                          
