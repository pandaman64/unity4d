struct X {
     int i;
     void opAssign(ref X other) {
         i = other.i;
     }
}
void main() {
     X [int] xs;
     xs[0] = X();
     int i = 42;
     xs[i] = X();
     xs[--i] = X();
}
