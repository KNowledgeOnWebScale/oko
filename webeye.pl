% --------------------
% Webeye -- Jos De Roo
% --------------------
%
% Webeye performs forward chaining for rules like PREM => CONC and
% backward chaining for rules like CONC <= PREM.
%
% Queries are posed and answered as PREM => true so the answers are also
% queries be it with some parts substituted and eventually containing more
% variables than in the original query.
%

:- use_module(library(format)).
:- use_module(library(terms)).
:- use_module(library(iso_ext)).

:- op(1150,xfx,=>).

:- dynamic((=>)/2).
:- dynamic(goal/0).
:- dynamic(label/1).

% options
proof_explanation :-
    bb_put(proof_explanation,true).

single_answer :-
    bb_put(single_answer,true).

linear_select :-
    bb_put(linear_select,true).

% run abstract machine
run :-
    (Prem => Conc),
    Prem,
    (   Conc = true
    ->  \+goal,
        labelvars(Prem),
        format("~q => true.~n",[Prem]),
        bb_get(single_answer,true)
    ;   \+Conc,
        labelvars(Conc),
        astep(Conc),
        (   bb_get(proof_explanation,true)
        ->  format("~q => ~q.~n",[Prem,Conc])
        ;   true
        ),
        retract(goal),
        fail
    ).
run :-
    (   (   goal
        ;   bb_get(linear_select,true)
        )
    ->  true
    ;   assertz(goal),
        run
    ).

% create witnesses
labelvars(Term) :-
    (   bb_get(label,Current)
    ->  true
    ;   Current = 0
    ),
    numbervars(Term,Current,Next),
    bb_put(label,Next).

% assert new step
astep((A,B)) :-
    astep(A),
    astep(B).
astep(false) :-
    throw('inference_fuse').
astep(A) :-
    (   \+A
    ->  assertz(A)
    ;   true
    ).
