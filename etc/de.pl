% Disjunction elimination

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

:- dynamic('https://github.com/IDLabResearch/Heiseneye#saying'/2).
:- dynamic(not_/1).

% saying A implies saying C
'https://github.com/IDLabResearch/Heiseneye#saying'(S,'A') => 'https://github.com/IDLabResearch/Heiseneye#saying'(S,'C').
not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'C')) => not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'A')).

% saying B implies saying C
'https://github.com/IDLabResearch/Heiseneye#saying'(S,'B') => 'https://github.com/IDLabResearch/Heiseneye#saying'(S,'C').
not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'C')) => not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'B')).

% saying A or saying B
not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'A')) => 'https://github.com/IDLabResearch/Heiseneye#saying'(S,'B').
not_('https://github.com/IDLabResearch/Heiseneye#saying'(S,'B')) => 'https://github.com/IDLabResearch/Heiseneye#saying'(S,'A').

% query
'https://github.com/IDLabResearch/Heiseneye#saying'(_WHO,'C') => yes.

% assuming the negation of the query so that it can be discharged when the query succeeds
not_('https://github.com/IDLabResearch/Heiseneye#saying'(someone,'C')).
