/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
*/

SELECT CITY, LENGTH(CITY) from STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) from STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;


/*
The MIN() and MAX() Functions in SQL->> 
You might think we can use MAX and MIN function 
These functions are generally used to operate on numeric or comparable values, such as integers or dates. 
When you try to use them directly on string lengths, they will return the smallest or largest length, 
not the actual city name associated with that length.
*/
