   class Foo {
       int i;
       this(int j) { i = j; }
       override bool opEquals(Object other) {
           return i == (cast(Foo)other).i;
       }
   }
   int main()
   {
       Foo a1[] = [new Foo(1), new Foo(2)];
       Foo a2[] = [new Foo(1), new Foo(2)];
       assert(a1 == a2);
       assert(a1 !is a2);
       Foo f1 = new Foo(42);
       Foo f2 = f1;
       Foo f3 = new Foo(42);
       assert(f1 == f2);
       assert(f1 == f3);
       assert(f1 is f2);
       assert(f1 !is f3);
       return 0;
   }
