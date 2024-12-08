/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Input Format
The TRIANGLES table is described as follows:

*/

SELECT CASE 
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle' 
WHEN A = B AND B = C THEN 'Equilateral' 
WHEN A = B OR B = C OR A = C THEN 'Isosceles' 
ELSE 'Scalene' 
END 
FROM TRIANGLES;

/*

-------------------------The CASE Statement in SQL ------------------------------

CASE is a conditional statement in SQL. It’s like if-else in programming.
It evaluates conditions in order and returns the result of the first true condition.
Use CASE to check multiple conditions in order.

--------------------------------CASE syntax --------------------------

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result3
END

---------------------------SELECT limiations----------------------------

The limitation of the SELECT statement that leads us to use CASE is its lack of built-in conditional logic for dynamic categorization. 
Without CASE, SQL lacks a direct way to:

1- Apply Multiple Conditions Dynamically:
A standard SELECT retrieves columns or calculated values directly but cannot change the output based on dynamic, condition-driven rules.
Assign Custom Labels Based on Conditions:

2- Assign Custom Labels Based on Conditions:
If you want to assign labels like "Equilateral" or "Scalene" based on the values of columns 
𝐴,B, and C, you can't do this with basic SELECT alone.

3- Avoid Repetition of Logic:
Without CASE, you would need multiple SELECT statements or complex WHERE clauses to implement conditional logic,
resulting in redundancy and reduced readability.




*/
