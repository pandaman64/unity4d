import System;
void fun(...) {
    int ok;
    foreach(arg; _arguments)
    {
         if (_argtype(arg) == typeid(int))
         {
             int i = arg;
             Console.WriteLine("int={0}".sys, i);
             ++ok;
         }
         else if (_argtype(arg) == typeid(string))
         {
             string s = arg;
             Console.WriteLine(s.sys);
             ++ok;
         }
     }
     assert(ok == 2);
}
 void main() {
    fun(1, 2.0, "three");
}
