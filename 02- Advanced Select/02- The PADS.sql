/*
Generate the following two result sets:

1- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical 
(i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

2- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
                        There are a total of [occupation_count] [occupation]s.

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
Note: There will be at least two entries in the table for each type of occupation.
--------Input Format-------
The OCCUPATIONS table is described as follows:
*/

  --QUERY-1
select concat(name, '(', SUBSTRING(occupation,1,1), ')') from occupations order by name; 

  --QUERY-2
select concat('There are a total of ',count(occupation), ' ', lower(occupation),'s.')
from occupations 
group by occupation
order by count(occupation),occupation;


----------------------Concept to solve this question------------------------
/*

1. CONCAT()

Purpose: Combines (concatenates) multiple strings into one string.
How It Works:
You can merge values or text literals into a single output.
Example: SELECT CONCAT('Hello', ' ', 'World') AS Greeting;
Output: Hello World
Key Points:
It's database-specific; in some systems, you use || instead of CONCAT().
If any value is NULL, it might return NULL (depending on the database).

2. SUBSTRING()

Purpose: Extracts a portion of a string.
How It Works:
It takes part of a string based on the position you specify.
Syntax: SUBSTRING(string, start_position, length)
string: The text from which you want to extract.
start_position: The starting position (1-based index).
length: How many characters to extract.
Example: SELECT SUBSTRING('Hello', 1, 3) AS PartialString;
Output: Hel

Key Points:
Similar functions include LEFT() (extracts from the left) and RIGHT() (extracts from the right).
Useful for manipulating strings when only part of the data is needed.

*/
