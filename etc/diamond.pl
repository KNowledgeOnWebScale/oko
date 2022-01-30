% Diamond Property Equality
% DP(r) => DP(re), i.e. the diamond property is preserved under reflexive closure
% Original code from http://www.ii.uib.no/~bezem/GL/dpe.in

:- op(1150,xfx,=>).

:- dynamic(dom/1).
:- dynamic(e/2).
:- dynamic(not_e/2).
:- dynamic(r/2).
:- dynamic(not_r/2).
:- dynamic('https://idlabresearch.github.io/etc#re'/2).
:- dynamic('https://idlabresearch.github.io/etc#not_re'/2).

% facts
true => dom(a),dom(b),dom(c).
true => 'https://idlabresearch.github.io/etc#re'(a,b),'https://idlabresearch.github.io/etc#re'(a,c).

% equality axioms
dom(X) => e(X,X).

e(X,Y) => e(Y,X).
not_e(Y,X) => not_e(X,Y).

e(X,Y),'https://idlabresearch.github.io/etc#re'(Y,Z) => 'https://idlabresearch.github.io/etc#re'(X,Z).
'https://idlabresearch.github.io/etc#not_re'(X,Z),'https://idlabresearch.github.io/etc#re'(Y,Z) => not_e(X,Y).
e(X,Y),'https://idlabresearch.github.io/etc#not_re'(X,Z) => not_e(Y,Z).

% basic facts on re
e(X,Y) => 'https://idlabresearch.github.io/etc#re'(X,Y).
'https://idlabresearch.github.io/etc#not_re'(X,Y) => not_e(X,Y).

r(X,Y) => 'https://idlabresearch.github.io/etc#re'(X,Y).
'https://idlabresearch.github.io/etc#not_re'(X,Y) => not_r(X,Y).

'https://idlabresearch.github.io/etc#re'(X,Y),not_e(X,Y) => r(X,Y).
not_r(X,Y),not_e(X,Y) => 'https://idlabresearch.github.io/etc#not_re'(X,Y).
'https://idlabresearch.github.io/etc#re'(X,Y),not_r(X,Y) => e(X,Y).

% DP
r(X,Y),r(X,Z) => dom(U),r(Y,U),r(Z,U).

% query
'https://idlabresearch.github.io/etc#re'(b,X),'https://idlabresearch.github.io/etc#re'(c,X) => true.

% assuming the negation of the query so that it can be discharged when the query succeeds
'https://idlabresearch.github.io/etc#re'(b,X) => 'https://idlabresearch.github.io/etc#not_re'(c,X).
'https://idlabresearch.github.io/etc#re'(c,X) => 'https://idlabresearch.github.io/etc#not_re'(b,X).

% a single answer is fine
limited_answer(1).
