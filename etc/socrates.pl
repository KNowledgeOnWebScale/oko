% Socrates is a mortal

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'http://example.org/etc#Man'('http://example.org/etc#socrates',true).

'http://example.org/etc#Mortal'(X,true) <= 'http://example.org/etc#Man'(X,true).

% query
'http://example.org/etc#Mortal'(_IND,true) => yes.
