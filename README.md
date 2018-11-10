# Prolog

1.  Given the relations 
father(X,Y)             X is the father of Y mother(X, Y)          X is the mother of Y female(X)               X is female male(X )                  X is male
Define prolog relations for the following:
a. sibling b. sister c. grandson d. descendant
Provide some facts for the father, mother, male, and female predicates and then test the entire thing using Prolog.

2.  Write a Prolog relation remove(E,L,R) that is true if R is the list which results from removing one instance of E from list L. The relation is false if E isn’t a member of L. 
What are all of the answers to the following queries? 
ask  remove(a,[b,a,d,a],R).
ask  remove(E,[b,a,d,a],R).
ask  remove(E,L,[b,a,d]).
ask  remove(p(X),[a,p(a),p(p(a)),p(p(p(a)))],R).

3.  Write a Prolog relation subsequence(L1,L2) that is true if list L1 contains a subset of the elements of L2 in the same order. 
How many different proofs are there for each of the following queries?
ask  subsequence([a,d],[b,a,d,a]).
ask  subsequence([b,a],[b,a,d,a]).
ask  subsequence([X,Y],[b,a,d,a]).
ask  subsequence(S,[b,a,d,a]).
Explain why there are that many.
4.  Write a Prolog relation that returns a list containing the union of the elements of two given lists.

5.  Write another relation (anything you want) that does something not performed above. Explain what your relation does.
