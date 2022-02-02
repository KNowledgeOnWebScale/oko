% Using existential rule

:- op(1150,xfx,=>).

:- dynamic('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'/2).
:- dynamic('https://idlabresearch.github.io/etc#likes'/2).

true => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('http://example.org/etc#Peter','https://idlabresearch.github.io/etc#Person').
true => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('http://example.org/etc#Bob','https://idlabresearch.github.io/etc#Person').

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(P,'https://idlabresearch.github.io/etc#Person') => 'https://idlabresearch.github.io/etc#likes'(P,_Q).

% query
'https://idlabresearch.github.io/etc#likes'(_X,_Y) => true.
