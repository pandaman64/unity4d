struct X {
     int i;
     this(this) {
         ++i;
     }
}
void main() {
     X [1] xs;
     xs[0] = X();
     foreach(x; xs) {
         assert(x.i == 1);
     }
}
