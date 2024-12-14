/*
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Sample Output: 
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
*/

Select N, 
  case 
      when p is null then "Root"
      when N not in (select distinct P from bst where p is not null) then "Leaf"
      else 'Inner'
END 
from bst
order by n;


/*
Explanation:

Root Condition:
P IS NULL: If the parent of the node is NULL, it is the root.

Leaf Condition:
N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL): A node is a leaf if it does not appear as a parent in the table.

Inner Condition:
The remaining nodes (those with a parent and at least one child) are classified as Inner.

Ordering:
ORDER BY N ensures that the output is sorted by the node values.
*/
