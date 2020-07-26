/*
*	OFFSET
*/


/*
*	we want to retrive the records based on the id colum but it should skip and retrieve records from next value of 
*	OFFSET value
*/
SELECT * FROM person OFFSET 5 LIMIT 5;



/*
*	if the LIMIT value is not provided then it will fetch all the records starting from the next value of the OFFSET.
*/
SELECT * FROM person OFFSET 5;