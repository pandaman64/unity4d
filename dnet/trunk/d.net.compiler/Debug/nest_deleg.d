int j;
void delegate() foo(int i) {
void bar() { 
   j = i;
}
void delegate() dg = &bar;
return dg;
}
void main() { 
void delegate() dg = foo(6);
dg();
assert(j == 6);
}
