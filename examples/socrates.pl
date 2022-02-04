% Socrates is a mortal

:- dynamic('http://example.org/etc#Mortal'/1).

'http://example.org/etc#Man'('http://example.org/etc#Socrates').

'http://example.org/etc#Man'(X) => 'http://example.org/etc#Mortal'(X).

% query
'http://example.org/etc#Mortal'(_IND) => true.
