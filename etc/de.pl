% Disjunction elimination

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#saying'/2).
:- dynamic('https://idlabresearch.github.io/etc#not_saying'/2).

% saying A implies saying C
'https://idlabresearch.github.io/etc#saying'(S,'A') => 'https://idlabresearch.github.io/etc#saying'(S,'C').
'https://idlabresearch.github.io/etc#not_saying'(S,'C') => 'https://idlabresearch.github.io/etc#not_saying'(S,'A').

% saying B implies saying C
'https://idlabresearch.github.io/etc#saying'(S,'B') => 'https://idlabresearch.github.io/etc#saying'(S,'C').
'https://idlabresearch.github.io/etc#not_saying'(S,'C') => 'https://idlabresearch.github.io/etc#not_saying'(S,'B').

% saying A or saying B
'https://idlabresearch.github.io/etc#not_saying'(S,'A') => 'https://idlabresearch.github.io/etc#saying'(S,'B').
'https://idlabresearch.github.io/etc#not_saying'(S,'B') => 'https://idlabresearch.github.io/etc#saying'(S,'A').

% query
'https://idlabresearch.github.io/etc#saying'(_WHO,'C') => true.

% assuming the negation of the query premis so that it can be discharged when the query succeeds
true => 'https://idlabresearch.github.io/etc#not_saying'(_WHO,'C').
