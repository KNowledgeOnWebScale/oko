% Socrates is a mortal

:- dynamic('http://example.org/etc#Mortal'/2).

'http://example.org/etc#Man'('http://example.org/etc#Socrates',true).

'http://example.org/etc#Man'(X,true) => 'http://example.org/etc#Mortal'(X,true).

% query
'http://example.org/etc#Mortal'(_IND,true) => true.
