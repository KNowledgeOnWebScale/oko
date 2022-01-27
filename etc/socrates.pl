% Socrates is a mortal

:- op(1150,xfx,=>).

:- dynamic('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'/2).

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('http://example.org/etc#socrates','http://example.org/etc#Man').

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#Mortal') :- 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#Man').

% query
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_IND,'http://example.org/etc#Mortal') => yes.
