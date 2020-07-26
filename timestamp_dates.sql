/*
*	TIMESTAMP AND DATES
*/


/*
*	this gives the actual timestamp
*/
SELECT NOW();


/*
*	to get the date from the actual timestamp, we need to cast actual timestamp with DATE
*/
SELECT NOW()::DATE;


/*
*	to get the time from the actual timestamp, we need to cast actual timestamp with TIME
*/
SELECT NOW()::TIME;


/*
*	ADDING AND SUBTRACTING FROM DATE
*/


/*
*	here we are trying to subtract current year with 1, so basically we are going 1 year back from now 
*/
SELECT NOW() - INTERVAL '1 YEAR';


/*
*	here we are trying to subtract current year with 10, so basically we are going 10 years back from now 
*	it doesn't matter if it is a YEAR / YEARS
*/
SELECT NOW() - INTERVAL '10 YEAR';

SELECT NOW() - INTERVAL '10 YEARS';


/*
*	here we are trying to subtract current month with 10, so basically we are going 10 months back from now 
*	it doesn't matter if it is a MONTH / MONTHS
*/
SELECT NOW() - INTERVAL '10 MONTH';

SELECT NOW() - INTERVAL '10 MONTHS';


/*
*	here we are trying to subtract current day with 10, so basically we are going 10 days back from now 
*	it doesn't matter if it is a DAY / DAYS
*/
SELECT NOW() - INTERVAL '10 DAY';

SELECT NOW() - INTERVAL '10 DAYS';


/*
*	here we are trying to adding current month with 10, so basically we are going 10 months ahead from now 
*	it doesn't matter if it is a MONTH / MONTHS
*/
SELECT NOW() + INTERVAL '10 MONTH';

SELECT NOW() + INTERVAL '10 MONTHS';


/*
*	here we are trying to adding current day with 10, so basically we are going 10 days ahead from now 
*	it doesn't matter if it is a DAY / DAYS
*/
SELECT NOW() + INTERVAL '10 DAY';

SELECT NOW() + INTERVAL '10 DAYS';


/*
*	here we are trying to adding current day with 10, so basically we are going 10 days ahead from now 
*	it doesn't matter if it is a DAY / DAYS
*	so when you cast the timestamp and add some days to it, it will return it in yyyy-mm-dd hh:mm:ss format
*/
SELECT NOW()::DATE + INTERVAL '10 DAY';

SELECT NOW()::DATE + INTERVAL '10 DAYS';



/*
*	here we are trying to adding current day with 10, so basically we are going 10 days ahead from now 
*	it doesn't matter if it is a DAY / DAYS
*	so when you add some days to it and then cast the timestamp, it will return it in yyyy-mm-dd format
*/
SELECT (NOW() + INTERVAL '10 DAY')::DATE;

SELECT (NOW()::DATE + INTERVAL '10 DAYS')::DATE;