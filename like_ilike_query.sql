/*
*	LIKE KEYWORD
*/

/*
*	the percentage is used to represent any no of characters in place of %
*/
SELECT * FROM person WHERE email LIKE '%@google.%'
FETCH FIRST 5 ROWS ONLY;


/*
*	if you want to find the information with certain no of characters in that column then use underscore '_'i
*	say you want to find the email id with 8 characters before @ then type underscore 8 times 
*/
SELECT * FROM person WHERE email LIKE '________@google.%'
FETCH FIRST 5 ROWS ONLY;


/*
*	ILIKE KEYWORD
*	ILIKE is used to skip the case sensitive search, no matter if you are giving the search character in uppercase or 
*	lower case 
*/
SELECT * FROM person WHERE country ILIKE 's%'
ORDER BY country ASC;