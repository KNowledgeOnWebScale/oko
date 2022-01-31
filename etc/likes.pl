% Using existential rule

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#person'/2).
:- dynamic('https://idlabresearch.github.io/etc#likes'/2).

true => 'https://idlabresearch.github.io/etc#person'('http://example.org/etc#Peter',true).
true => 'https://idlabresearch.github.io/etc#person'('http://example.org/etc#Bob',true).

'https://idlabresearch.github.io/etc#person'(P,true) => 'https://idlabresearch.github.io/etc#likes'(P,_Q).

% query
'https://idlabresearch.github.io/etc#likes'(_X,_Y) => true.
