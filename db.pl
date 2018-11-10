 %1. Family 
  male(Aaron).
  male(George).
  male(Sanders).
  male(John).

  female(Denise).
  female(Vicky).
  female(Raina).
 

  father(Aaron,John).
  father(Vicky,Sanders).
  father(George,Aaron).

  mother(Denise,John).
  mother(Vicky,Sanders).
  mother(Raina,Denise).

  sibling(X,Y):-
  father(Z,X),
  father(Z,Y),
  write(X),
  write(' is sibling of '),
  write(Y), nl.

  sibling(X,Y):-
  mother(Z,X),
  mother(Z,Y),
  write(X),
  write(' is sibling of '),
  write(Y), nl.

  sister(X,Y):-
  mother(Z,X),
  mother(Z,Y),
  female(X),
  X\=Y,
  write(X),
  write(' is sister of '),
  write(Y), nl.

  sister(X,Y):-
  father(Z,X),
  father(Z,Y),
  female(X),
  X\=Y,
  write(X),
  write(' is sister of '),
  write(Y), nl.

  grandson(X,Z):- 
  father(X,Y),
  father(Y,Z),
  male(Z),
  write(Z),
  write(' is grandson of '),
  write(X), nl.

  descendant(X,Z):- 
  father(X,Y),
  father(Y,Z),
  write(Z),
  write(' is descendant of '),
  write(X), nl.
  
  descendant(X,Y):-
  father(X,Y),
  write(Y),
  write(' is descendant of '),
  write(X), nl.

% 2. Relation remove
  remove(E,L,R):- 
   member(E,L), 
   delete(L,E,X), 
   list_to_set(X,R),
   write(R).

  remove(E,L,R):- 
   member(E,L), 
   select(E,L,R),
   write(R).

% 3. subsequence
   subsequence(L1,L2):- 
   subset(L1,L2).

% 4. List Union
   add_list(X,Y):-
     append(X,Y,Z),
     write('The Union of 2 list is:'),
     write(Z).

% 5. Random Relation
  hello:-
    write('What is your name, User? '),
    read(X),
    write('Hi '),
    write(X).