auto max(T1, T2, Tail...)(T1 first, T2 second, Tail args){
    auto r = second > first ? second : first;
    static if (Tail.length == 0) {
        return r;
    }
    else {
        return max(r, args);
    }
}
void main() {
   uint k = 42;
    auto i = max(3, 2.5, k);
    assert(i == 42);
}
