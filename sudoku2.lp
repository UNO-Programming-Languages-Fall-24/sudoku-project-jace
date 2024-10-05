% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n = 3.

subgrid(X,Y,G) :- X=1..n*n, Y=1..n*n, G=1+(((X-1)/n)*n+(Y-1)/n).
{ sudoku(X,Y,N) : N=1..n*n } = 1 :- X=1..n*n, Y=1..n*n.

sudoku(X,Y,N) :- initial(X,Y,N).
:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.
:- sudoku(X,Y,N), sudoku(X,Y',N), Y != Y'.
:- sudoku(X,Y,N), sudoku(X',Y',N), subgrid(X,Y,G), subgrid(X',Y',G), X != X', Y != Y'.

#show sudoku/3.
