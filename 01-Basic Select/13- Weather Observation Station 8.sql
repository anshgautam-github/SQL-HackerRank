/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format ->>
The STATION table is described as follows:
*/

SELECT DISTINCT CITY FROM STATION 
                            WHERE (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%') 
                            AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');


/*
Some of you might think, this would also work but it would not work ->

SELECT DISTINCT CITY
FROM STATION
WHERE (LOWER(CITY) LIKE 'a%' AND LOWER(CITY) LIKE '%a')
   OR (LOWER(CITY) LIKE 'e%' AND LOWER(CITY) LIKE '%e')
   OR (LOWER(CITY) LIKE 'i%' AND LOWER(CITY) LIKE '%i')
   OR (LOWER(CITY) LIKE 'o%' AND LOWER(CITY) LIKE '%o')
   OR (LOWER(CITY) LIKE 'u%' AND LOWER(CITY) LIKE '%u');


Problem ->> The city only needs to start and end with one vowel (but not necessarily the same vowel). This is not what the question asks for. 

*/
