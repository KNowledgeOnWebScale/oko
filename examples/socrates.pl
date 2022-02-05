% Socrates is a mortal

:- dynamic('http://example.org/ns#Man'/2).
:- dynamic('http://example.org/ns#Mortal'/2).

'http://example.org/ns#Man'('http://example.org/ns#Socrates',true).

'http://example.org/ns#Man'(X,true) => 'http://example.org/ns#Mortal'(X,true).

% query
'https://idlabresearch.github.io/ns#triple'([_CLASS,_IND,true],TRIPLE) => true.
