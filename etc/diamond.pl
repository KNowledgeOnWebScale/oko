% Diamond Property Equality
% DP(r) => DP(re), i.e. the diamond property is preserved under reflexive closure
% Original code from http://www.ii.uib.no/~bezem/GL/dpe.in

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#dom'/1).
:- dynamic('https://idlabresearch.github.io/etc#e'/2).
:- dynamic('https://idlabresearch.github.io/etc#not_e'/2).
:- dynamic('https://idlabresearch.github.io/etc#r'/2).
:- dynamic('https://idlabresearch.github.io/etc#not_r'/2).
:- dynamic('https://idlabresearch.github.io/etc#re'/2).
:- dynamic('https://idlabresearch.github.io/etc#not_re'/2).

% facts
true => 'https://idlabresearch.github.io/etc#dom'(a),'https://idlabresearch.github.io/etc#dom'(b),'https://idlabresearch.github.io/etc#dom'(c).
true => 'https://idlabresearch.github.io/etc#re'(a,b),'https://idlabresearch.github.io/etc#re'(a,c).

% equality axioms
'https://idlabresearch.github.io/etc#dom'(X) => 'https://idlabresearch.github.io/etc#e'(X,X).

'https://idlabresearch.github.io/etc#e'(X,Y) => 'https://idlabresearch.github.io/etc#e'(Y,X).
'https://idlabresearch.github.io/etc#not_e'(Y,X) => 'https://idlabresearch.github.io/etc#not_e'(X,Y).

'https://idlabresearch.github.io/etc#e'(X,Y),'https://idlabresearch.github.io/etc#re'(Y,Z) => 'https://idlabresearch.github.io/etc#re'(X,Z).
'https://idlabresearch.github.io/etc#not_re'(X,Z),'https://idlabresearch.github.io/etc#re'(Y,Z) => 'https://idlabresearch.github.io/etc#not_e'(X,Y).
'https://idlabresearch.github.io/etc#e'(X,Y),'https://idlabresearch.github.io/etc#not_re'(X,Z) => 'https://idlabresearch.github.io/etc#not_e'(Y,Z).

% basic facts on re
'https://idlabresearch.github.io/etc#e'(X,Y) => 'https://idlabresearch.github.io/etc#re'(X,Y).
'https://idlabresearch.github.io/etc#not_re'(X,Y) => 'https://idlabresearch.github.io/etc#not_e'(X,Y).

'https://idlabresearch.github.io/etc#r'(X,Y) => 'https://idlabresearch.github.io/etc#re'(X,Y).
'https://idlabresearch.github.io/etc#not_re'(X,Y) => 'https://idlabresearch.github.io/etc#not_r'(X,Y).

'https://idlabresearch.github.io/etc#re'(X,Y),'https://idlabresearch.github.io/etc#not_e'(X,Y) => 'https://idlabresearch.github.io/etc#r'(X,Y).
'https://idlabresearch.github.io/etc#not_r'(X,Y),'https://idlabresearch.github.io/etc#not_e'(X,Y) => 'https://idlabresearch.github.io/etc#not_re'(X,Y).
'https://idlabresearch.github.io/etc#re'(X,Y),'https://idlabresearch.github.io/etc#not_r'(X,Y) => 'https://idlabresearch.github.io/etc#e'(X,Y).

% DP
'https://idlabresearch.github.io/etc#r'(X,Y),'https://idlabresearch.github.io/etc#r'(X,Z) =>
    'https://idlabresearch.github.io/etc#dom'(U),
    'https://idlabresearch.github.io/etc#r'(Y,U),
    'https://idlabresearch.github.io/etc#r'(Z,U).

% query
'https://idlabresearch.github.io/etc#re'(b,X),'https://idlabresearch.github.io/etc#re'(c,X) => true.

% assuming the negation of the query premis so that it can be discharged when the query succeeds
'https://idlabresearch.github.io/etc#re'(b,X) => 'https://idlabresearch.github.io/etc#not_re'(c,X).
'https://idlabresearch.github.io/etc#re'(c,X) => 'https://idlabresearch.github.io/etc#not_re'(b,X).

% a single answer is fine
limited_answer(1).
