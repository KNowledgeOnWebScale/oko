% Socrates is a mortal

:- dynamic('http://example.org/ns#Man'/2).
:- dynamic('http://example.org/ns#Mortal'/2).

true => 'http://example.org/ns#Man'('http://example.org/ns#Socrates','http://example.org/ns#Man').

'http://example.org/ns#Man'(X,'http://example.org/ns#Man') => 'http://example.org/ns#Mortal'(X,'http://example.org/ns#Mortal').

% query
'https://idlabresearch.github.io/ns#find_triple'([_P,_S,_O],_TRIPLE) => true.
