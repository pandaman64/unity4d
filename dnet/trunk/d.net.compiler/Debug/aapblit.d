struct X {
     int i;
     this(this) {
         ++i;
     }
}
void main() {
     X [int] xs;
     xs[0] = X();
     int i = 42;
     xs[i] = X();
     xs[i++] = X();
}
