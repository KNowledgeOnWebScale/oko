% -------------------------------
% Webized reasoning -- Jos De Roo
% -------------------------------
%
% See https://idlabresearch.github.io/Webeye/
%

:- use_module(library(lists)).

:- op(1150,xfx,=>).

:- dynamic((=>)/2).
:- dynamic(goal/0).
:- dynamic(label/1).
:- dynamic(answer/1).
:- dynamic(single_answer/0).
:- dynamic(proof_step/1).

%
% run Webeye abstract machine with a list of options:
%   - proof_step to output proof steps
%   - single_answer to output only one answer
%   - linear_select to use the rules only once
%
run(Options) :-
    (Prem => Conc),
    Prem,
    (   Conc = true
    ->  \+goal,
        labelvars(Prem),
        (   \+answer((Prem => true))
        ->  assertz(answer((Prem => true))),
            wterm(Prem),
            write(' => true.\n')
        ;   true
        ),
        member(single_answer,Options)
    ;   \+Conc,
        labelvars(Conc),
        astep(Conc),
        (   member(proof_step,Options),
            \+proof_step((Prem => Conc))
        ->  assertz(proof_step((Prem => Conc))),
            wterm(Prem),
            write(' => '),
            wterm(Conc),
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

%
% create witnesses
%
labelvars(Term) :-
    (   retract(label(Current))
    ->  true
    ;   Current = 0
    ),
    numbervars(Term,Current,Next),
    assertz(label(Next)).

%
% assert new step
%
astep((A,B)) :-
    astep(A),
    astep(B).
astep(false) :-
    throw('inference_fuse').
astep(A) :-
    (   \+A
    ->  asserta(A)
    ;   true
    ).

%
% write term
%
wterm('https://idlabresearch.github.io/ns#triple'(P,[S,O])) :-
    nonvar(P),
    !,
    Triple =.. [P,S,O],
    writeq(Triple).
wterm(A) :-
    writeq(A).

%
% built-ins
%
'https://idlabresearch.github.io/ns#triple'(P,[S,O]) :-
    (   var(P)
    ->  current_predicate(P/2),
        P \= =>
    ;   true
    ),
    Triple =.. [P,S,O],
    predicate_property(Triple,dynamic),
    Triple.

