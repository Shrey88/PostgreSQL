/*
*	LIMIT THE RECORDS WHILE RETREIVING
*/


/*
*	here we are limiting the records to as many as we want 
*
*	so this can be any values
*/

SELECT * FROM person LIMIT 10;



/*
*	so the LIMIT is not the keyword by sql standards.
*	so there is another keyword that allows us to do the same thing like LIMIT i.e. FETCH
*	FETCH is the sequel standard.
*	value 5 after FETCH FIRST is optional 
*/
SELECT * FROM person OFFSET 5 FETCH FIRST 5 ROW ONLY;


/*
*	you can use the OFFSET AND FETCH after WHERE  clause
*/
SELECT * FROM person WHERE email LIKE '%@google.%'
FETCH FIRST 5 ROWS ONLY;
