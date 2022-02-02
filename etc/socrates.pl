% Socrates is a mortal

:- op(1150,xfx,=>).

:- dynamic('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'/2).

true => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('http://example.org/etc#Socrates','https://idlabresearch.github.io/etc#Man').

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'https://idlabresearch.github.io/etc#Man') =>
    'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'https://idlabresearch.github.io/etc#Mortal').

% query
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_IND,'https://idlabresearch.github.io/etc#Mortal') => true.
