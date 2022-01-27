% Disjunction elimination

:- op(1150,xfx,=>).

:- dynamic('https://josd.github.io/heiseneye/etc#saying'/2).
:- dynamic(not_/1).

% saying A implies saying C
'https://josd.github.io/heiseneye/etc#saying'(S,'A') => 'https://josd.github.io/heiseneye/etc#saying'(S,'C').
not_('https://josd.github.io/heiseneye/etc#saying'(S,'C')) => not_('https://josd.github.io/heiseneye/etc#saying'(S,'A')).

% saying B implies saying C
'https://josd.github.io/heiseneye/etc#saying'(S,'B') => 'https://josd.github.io/heiseneye/etc#saying'(S,'C').
not_('https://josd.github.io/heiseneye/etc#saying'(S,'C')) => not_('https://josd.github.io/heiseneye/etc#saying'(S,'B')).

% saying A or saying B
not_('https://josd.github.io/heiseneye/etc#saying'(S,'A')) => 'https://josd.github.io/heiseneye/etc#saying'(S,'B').
not_('https://josd.github.io/heiseneye/etc#saying'(S,'B')) => 'https://josd.github.io/heiseneye/etc#saying'(S,'A').

% query
'https://josd.github.io/heiseneye/etc#saying'(_WHO,'C') => yes.

% assuming the negation of the query so that it can be discharged when the query succeeds
not_('https://josd.github.io/heiseneye/etc#saying'(someone,'C')).
