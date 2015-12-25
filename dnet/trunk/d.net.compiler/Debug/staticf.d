class Test {
     static int i = 1;
     this() { ++i; }
}
void main() {
  Object o1 = new Test; 
  Object o2 = new Test; 
  assert(Test.i == 3);  
}
