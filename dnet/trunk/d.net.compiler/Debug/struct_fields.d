struct Test {
   int value;
   int f() { 
       return value;
   }
}
void main() { 
   Test t = { 123 };
}
