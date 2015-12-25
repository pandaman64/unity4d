void bar(ref int x) { 
   x = 42;
}
void main() { 
   int i;
   assert(i == 0);
   bar(i);
   assert(i == 42);
}
