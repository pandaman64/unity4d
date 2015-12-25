import multi;
void main() { 
   Test t = new Test;
   int k = 42;
   t.f(k);
   assert(t.i == 42);
}
