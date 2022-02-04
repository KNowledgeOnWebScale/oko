% Socrates is a mortal

:- dynamic('http://example.org/ns#Mortal'/2).

'http://example.org/ns#Man'('http://example.org/ns#Socrates',true).

'http://example.org/ns#Man'(X,true) => 'http://example.org/ns#Mortal'(X,true).

% query
'http://example.org/ns#Mortal'(_IND,true) => true.
