/*
**	Application	: Ring lessons - Scope - Conflicts (Class|Object - Local) .
**	Author		: Osama Ballan .
**	Date			: 2018 - 01 - 25 .
*/

# Conflict Between The Class|Object Attribute and Local Variables .

new test{ 
mytest() 
sayHello("Osama")
? @name
}


Class test
	@name = "Ring"

	Func mytest
		? @name

	Func sayHello p1
		name = "Mr. " + p1
		? "Hello " + name
