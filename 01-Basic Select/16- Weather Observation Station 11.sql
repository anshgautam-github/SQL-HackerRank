/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format -
The STATION table is described as follows:
*/

SELECT DISTINCT CITY FROM STATION 
                          WHERE NOT(
                              (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%') 
                              AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u')
                          );



/*
Some might think this might work but it would not work because ->

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT LIKE 'a%' 
   OR LOWER(CITY) NOT LIKE 'e%' 
   OR LOWER(CITY) NOT LIKE 'i%' 
   OR LOWER(CITY) NOT LIKE 'o%' 
   OR LOWER(CITY) NOT LIKE 'u%' 
   OR LOWER(CITY) NOT LIKE '%a'
   OR LOWER(CITY) NOT LIKE '%e'
   OR LOWER(CITY) NOT LIKE '%i'
   OR LOWER(CITY) NOT LIKE '%o'
   OR LOWER(CITY) NOT LIKE '%u';


Explaination ->> Why it failed:

The issue lies with the OR operator. In this query, you're checking the NOT LIKE conditions for each individual vowel (both for the start and 
end of the string).
Because you're using OR between these conditions, any city that fails to meet at least one condition (i.e., it doesn't start with a, e, etc., 
or it doesn't end with a, e, etc.) will be included. This is too relaxed and allows many cities that shouldn't be included.

Example:
"Addison" doesn't start with e or i or o, so the first condition (NOT LIKE 'e%') will allow it, even though it starts with a vowel (a), which you want to exclude.
*/
