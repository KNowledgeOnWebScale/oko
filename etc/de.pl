% Disjunction elimination

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

:- dynamic('https://idlabresearch.github.io/etc#saying'/2).
:- dynamic(not_/1).

% saying A implies saying C
'https://idlabresearch.github.io/etc#saying'(S,'A') => 'https://idlabresearch.github.io/etc#saying'(S,'C').
not_('https://idlabresearch.github.io/etc#saying'(S,'C')) => not_('https://idlabresearch.github.io/etc#saying'(S,'A')).

% saying B implies saying C
'https://idlabresearch.github.io/etc#saying'(S,'B') => 'https://idlabresearch.github.io/etc#saying'(S,'C').
not_('https://idlabresearch.github.io/etc#saying'(S,'C')) => not_('https://idlabresearch.github.io/etc#saying'(S,'B')).

% saying A or saying B
not_('https://idlabresearch.github.io/etc#saying'(S,'A')) => 'https://idlabresearch.github.io/etc#saying'(S,'B').
not_('https://idlabresearch.github.io/etc#saying'(S,'B')) => 'https://idlabresearch.github.io/etc#saying'(S,'A').

% query
'https://idlabresearch.github.io/etc#saying'(_WHO,'C') => yes.

% assuming the negation of the query so that it can be discharged when the query succeeds
not_('https://idlabresearch.github.io/etc#saying'(someone,'C')).
