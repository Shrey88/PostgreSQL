/*
* COALESCE KEYWORD : IT ALL US TO HAVE A DEFAULT VALUE IF THE FIRST VALUE IS NOT PRESENT
*
*	we can give multiple arguments to this keyword.
*/

/*
*	in this case we have only 1 value, so it will return the same value
*/
SELECT COALESCE(1);


/*
*	in this case it will not return any value, as the parameter pass is null
*/
SELECT COALESCE(null);


/*
*	in this case it will return the very first value present after null
*/
SELECT COALESCE(null, 1) as number;


/*
*	in this case it will check whether the first value is present or not. if not then it will check for 2nd. if not then 3rd
*	and it will print the value present as 3rd parameter
*/
SELECT COALESCE(null,  null, 1) as number;


/*
*	in this case it will print the very first value coming after nulll argument i.e 1
*/
SELECT COALESCE(null, null, 1, 10) as number;


/*
*	using the default value for email column where people dont have email id
*/
SELECT COALESCE(email, 'Email not provided') FROM person;