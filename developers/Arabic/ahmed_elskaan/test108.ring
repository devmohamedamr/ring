/*
**	Application Name : Scope;
**	Author           : Ahmed Elskaan;
**	Date             : 2017-12-31;		
*/
# problem: conflict between global varibles and class attribute
# solution: use special character at the begining of varible 
$x = 10

new point {x = 10 y = 20  ? self}
class point x y 
	
