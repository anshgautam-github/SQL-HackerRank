/*
Query a count of the number of cities in CITY having a Population larger than 1,00,000 .

Input Format:
The CITY table is described as follows:
*/

select count(name) from city where population>100000;
