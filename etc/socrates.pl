% Socrates is a mortal

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#man'/2).
:- dynamic('https://idlabresearch.github.io/etc#mortal'/2).

true => 'https://idlabresearch.github.io/etc#man'('http://example.org/etc#socrates',true).

'https://idlabresearch.github.io/etc#man'(X,true) => 'https://idlabresearch.github.io/etc#mortal'(X,true).

% query
'https://idlabresearch.github.io/etc#mortal'(_IND,true) => true.
