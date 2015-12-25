void main()
{
    string hello = "foo\nbar";
    string hello2 = "foo\"bar";
    string hello3 = "\\";
    mixin("string s = \"ula\";");
    char c = '\n';
    assert(c == 10);
}
