using System;

namespace HageLibrary
{
    namespace Fuga
    {
        public class Hige
        {
            public int Gyoepi()
            {
                return 42;
            }
        }
    }
    public class Hoge
    {
        int i;

        public int Value
        {
            get { return i; }
            set { i = value; }
        }

        public Hoge(int ii)
        {
            i = ii;
        }

        public void Quark(int d)
        {
            Console.WriteLine(i + d);
        }
    }
}
