% Using Skolem function

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#likes'/2).

'http://example.org/etc#Person'('http://example.org/etc#Peter').
'http://example.org/etc#Person'('http://example.org/etc#Bob').

'http://example.org/etc#Person'(P) => 'https://idlabresearch.github.io/etc#likes'(P,_Q).

% query
'https://idlabresearch.github.io/etc#likes'(_X,_Y) => true.
