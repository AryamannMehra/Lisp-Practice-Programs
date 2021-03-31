# Lisp-Practice-Programs
This is a compilation of practice programs made in lisp showcasing list operations:
1.	ListBetween.lsp:
Description: A lisp function that takes a list and two indexes from and to, and returns sublist whose elements are the elements within from and to indexes. If from is greater than to, the list
is printed in reverse order
e.g.:
> (get2 '(1 6 12) 2 3)
(6 12)
> (get2 '(1 6 12) 4 2)
NIL
>(sub-list '(1 6 12) 3 1)
(12 6 1)

2.	CheckTree.lsp
Description: This lisp program checks whether a binary tree is a Binary Search Tree. A Binary
Search Tree (BST) is a tree in which all the nodes follow the below-mentioned properties:
 The left sub-tree of a node has a key less than or equal to its parent node's key.
 The right sub-tree of a node has a key greater than to its parent node's key.
The list representing the structure of a sample binary tree is given in the following:
>'(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))
This program checks the validity of input lists.

3	Flatten.lisp
Description: A lisp function that receives a list as the input argument (the list is mixed up
integers, decimals, characters and nested lists) and returns a attened list containing all
the atomic elements that are numbers, without any duplication. Sample function output is
shown below:
>(flatten-numbers '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2))))
>(1 2 3 2.5 4.5)
