/*
*	NULLIF
*
*	how we can tackle division by zero
*/


/*
*	this will throw an error
*/
SELECT 10/0;


/*
*	this returns null value when your first and second value is same 
*/
SELECT NULLIF(10, 10);


/*
*	this returns the first value when you have two different values, because the 100 is not equal to 19 
*/
SELECT NULLIF(100, 19);


/*
*	postgres does not throw any error, it simply returns null
*/
SELECT 100 / NULL;


/*
*	in this case we are trying to divide 10 by 2 
*	
*	first the nullif function returns a first value as the both the arguments are different 
*	and then the vlaue 10 is divided by 2
*	
*/
SELECT 10 / NULLIF(2,  9);


/*
*	in this case we need to use COALESCE to handle the null value returned by the division
*
*	first the nullif function returns null value as both th arguments are having the same value.
*	then the value 10 will e divided by null which will again return null value.
* 	the second null value returned by the division will be handled by the coalesce. 
*/
SELECT COALESCE(10 / NULLIF(0, 0), 0);
