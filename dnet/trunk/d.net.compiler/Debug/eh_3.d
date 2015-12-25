void f(int i)
{
    if (i == 0)
        throw new Exception("boom");
}
void main()
{
    int k;
    try
    {
        f( k );
        assert(false);
    }
    catch (Exception)
    {
    }
    finally
    {
        k = 42;
    }
    assert(k == 42);
}
