import System;

class Child 
{
	int data;
	this()
	{
		data = 42;
	}
}

class Parent 
{
	Child child;
	int data;
	this()
	{
		child = new Child;
	}
}

void main()
{
	Parent p = new Parent;
	Child  c = new Child;
	assert(p.child.data == 42);
	System.Console.WriteLine(p.child.data);	
	p.data = 13;
	System.Console.WriteLine(p.data);	
	p.data = ++p.data;
	assert(p.data == 14);
	System.Console.WriteLine(p.data);	
	p.child.data = p.data;
	++p.child.data;
	assert(p.child.data == 15);
	System.Console.WriteLine(p.child.data);	
	p.child.data = ++c.data;
	assert(p.child.data == 43);
	System.Console.WriteLine(p.child.data);	
	p.child.data = p.child.data++;
	assert(p.child.data == 43);
	System.Console.WriteLine(p.child.data);	
   p.child.data = 1; 
   c.data = 2; 
   p.child.data += c.data; 
   assert(c.data == 2);    
   assert(p.child.data == 3);
}
