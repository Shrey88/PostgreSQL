/*
*	FINDING THE LIST OF EXTNESIONS AVAILABLE
*/
SELECT * FROM pg_available_extensions;


/*
*	to install an extension
*	give the extension name in the double  qoutes
*/
CREATE EXTENSION IF NOT  EXISTS "uuid-ossp";


/*
*	how to use the extension
*
*	type \? and search for function
*
*	type \df is to get the list of functions
*
*	so we have just given the function name to generate uuid and it will be globally unique
*	
*	so uuid is helpful when you want to migrate the data from one database to another as they will be gobally unique
*/
SELECT uuid_generate_v4();