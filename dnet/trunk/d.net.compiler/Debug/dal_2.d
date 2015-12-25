import System;
void main() {
  float f[]; 
  f.length = 3;
  assert(f.length == 3); 
  for (int i; i != 3; ++i) 
     System.Console.WriteLine(f[i]);
}
