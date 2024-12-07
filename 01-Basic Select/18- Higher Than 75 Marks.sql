/*
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format-->
The STUDENTS table is described as follows:
*/

select name from students where marks>75 order by right(name,3),id;



/*
LOGIC ->>

How does ORDER BY RIGHT() work?
In the context of the problem you're trying to solve (sorting by the last 3 characters of a name):

First: You use the RIGHT() function to extract the last 3 characters from the Name column.
Then: You use ORDER BY RIGHT(Name, 3) to sort the records based on these 3 characters in lexicographical (alphabetical) order.

*/
