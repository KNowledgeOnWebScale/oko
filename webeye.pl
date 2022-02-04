% ----------------------------------------
% Webized reasoning - Webeye -- Jos De Roo
% ----------------------------------------

:- op(1150,xfx,=>).

:- dynamic((=>)/2).
:- dynamic(goal/0).
:- dynamic(label/1).
:- dynamic(answer/1).
:- dynamic(single_answer/0).
:- dynamic(proof_step/1).

run :-
    (Prem => Conc),
    Prem,
    (   Conc = true
    ->  \+goal,
        labelvars(Prem),
        (   \+answer((Prem => true))
        ->  assertz(answer((Prem => true)))
        ;   true
        ),
        single_answer
    ;   \+Conc,
        labelvars(Conc),
        astep(Conc),
        (   \+proof_step((Prem => Conc))
        ->  assertz(proof_step((Prem => Conc)))
        ;   true
        ),
        retract(goal),
        fail
    ).
run :-
    (   goal
    ->  true
    ;   asserta(goal),
        run
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
