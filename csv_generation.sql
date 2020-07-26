/*
* GENERATING CSV FILE USING POSTGRES
*/

SELECT * FROM person
LEFT JOIN car ON car.id = person.car_id;


/*
*	so type \? for help and find Input/Output: you will find options for file
*
*	the \copy command is used to copy the results 
*	first argument : write the select query of which you want to copy the results
*	second argument: give the information where you want to copy the results if it's file then five the full file path 
*	third argument: mention the delimiter for sepearating the columns
*	fourth argument: mention the format of the file if you want to copy the results to file
*	fifth argument: mention header in caps if you want the header of the result as well.
*/
\copy (SELECT * FROM person LEFT JOIN car ON car.id = person.car_id) TO 'result.csv' DELIMITER ',' CSV HEADER