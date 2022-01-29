% Graph Literals to Augment Simple Statements

:- use_module(library(iso_ext)).
:- use_module(library(lists)).

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'http://example.org/etc#p'([['http://example.org/etc#a','http://example.org/etc#b','http://example.org/etc#c']],'http://example.org/etc#o').
'http://example.org/etc#p'([['http://example.org/etc#r','http://example.org/etc#s','http://example.org/etc#t']],'http://example.org/etc#o').
'http://example.org/etc#p'([['http://example.org/etc#r','http://example.org/etc#s','http://example.org/etc#t'],['http://example.org/etc#d','http://example.org/etc#e','http://example.org/etc#f'],['http://example.org/etc#r','http://example.org/etc#s','http://example.org/etc#t']],'http://example.org/etc#o').

'http://example.org/etc#q'(A,B) <=
    'http://example.org/etc#p'(C,B),
    forall(member(D,A),member(D,C)),
    forall(member(E,C),member(E,A)).

% query
'http://example.org/etc#q'([[_A,'http://example.org/etc#b','http://example.org/etc#c']],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#a',B,C],['http://example.org/etc#a',B,C]],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#a',B,C],[_A,B,C]],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#r',_S,'http://example.org/etc#t']],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#d','http://example.org/etc#e','http://example.org/etc#f'],['http://example.org/etc#r',_S,'http://example.org/etc#t']],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#d',_E,'http://example.org/etc#f'],['http://example.org/etc#r','http://example.org/etc#s','http://example.org/etc#t']],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#d','http://example.org/etc#e','http://example.org/etc#f'],['http://example.org/etc#r','http://example.org/etc#s','http://example.org/etc#t'],['http://example.org/etc#d',_E,'http://example.org/etc#f']],'http://example.org/etc#o') => true.
'http://example.org/etc#q'([['http://example.org/etc#d',_E,'http://example.org/etc#f'],['http://example.org/etc#r',_S,'http://example.org/etc#t'],['http://example.org/etc#d','http://example.org/etc#e','http://example.org/etc#f']],'http://example.org/etc#o') => true.
