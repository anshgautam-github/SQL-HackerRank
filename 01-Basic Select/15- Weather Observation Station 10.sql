/*
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format->
The STATION table is described as follows:
*/

SELECT DISTINCT CITY FROM STATION WHERE NOT (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');
