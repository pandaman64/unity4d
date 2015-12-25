import System;
void main()
{
    string greet = "Hello World";
    string msg = greet[5..$];
    assert(String.Compare(msg[1..$].sys, "World".sys) == 0);
    msg = greet[5..11];
    assert(String.Compare(msg[1..$].sys, "World".sys) == 0);
}
