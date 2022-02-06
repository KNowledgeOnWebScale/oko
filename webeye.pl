% --------------------
% Webeye -- Jos De Roo
% --------------------
%
% See https://idlabresearch.github.io/Webeye/
%

:- use_module(library(lists)).

:- op(1150,xfx,=>).

:- dynamic((=>)/2).
:- dynamic(goal/0).
:- dynamic(label/1).
:- dynamic(answer/1).
:- dynamic(proof_step/1).

% run Webeye abstract machine with a list of options:
%   - single_answer: output only one answer
%   - proof_step: output proof steps
%   - linear_select: use the rules only once
%
% 1/ select rule P => C
% 2/ prove P and if it fails backtrack to 1/
% 3/ if C = true answer with P => true and if single_answer stop, else backtrack to 2/
%    else if ~C assert C, retract goal and backtrack to 2/
%    else backtrack to 2/
% 4/ if goal or linear_select stop, else assert goal and start again at 1/
%
run(Options) :-
    (Prem => Conc),
    copy_term((Prem => Conc),Rule),
    labelvars(Rule),
    Prem,
    (   Conc = true
    ->  labelvars(Prem),
        (   \+answer((Prem => true))
        ->  assertz(answer((Prem => true))),
            writeq(Prem),
            write(' => true.\n')
        ;   true
        ),
        member(single_answer,Options)
    ;   \+Conc,
        labelvars(Conc),
        astep(Prem,Conc),
        (   member(proof_step,Options),
            \+proof_step((Prem => Conc))
        ->  assertz(proof_step((Prem => Conc))),
            writeq('https://idlabresearch.github.io/ns#proof_step'(Rule,(Prem => Conc))),
            write('.\n')
        ;   true
        ),
        retract(goal),
        fail
    ).
run(Options) :-
    (   (   goal
        ;   member(linear_select,Options)
        )
    ->  true
    ;   asserta(goal),
        run(Options)
    ).

% create witnesses
labelvars(Term) :-
    (   retract(label(Current))
    ->  true
    ;   Current = 0
    ),
    numbervars(Term,Current,Next),
    assertz(label(Next)).

% assert new step
astep(A,(B,C)) :-
    astep(A,B),
    astep(A,C).
astep(A,false) :-
    writeq(A),
    write(' => false.\n'),
    halt.
astep(_,A) :-
    (   \+A
    ->  asserta(A)
    ;   true
    ).

%
% built-ins
%
'https://idlabresearch.github.io/ns#find_triple'([P,S,O],Triple) :-
    (   var(P)
    ->  current_predicate(P/2),
        P \= =>
    ;   true
    ),
    Triple =.. [P,S,O],
    predicate_property(Triple,dynamic),
    Triple.
