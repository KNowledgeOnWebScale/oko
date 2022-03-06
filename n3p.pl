:- op(1150,xfx,=>).
:- op(1175,xfx,<=).

term_expansion((Head <= Body),(Head :- Body)).
term_expansion(('https://idlabresearch.github.io/ns#builtin'(Term,true)),(:- Term)).

goal_expansion('https://idlabresearch.github.io/ns#builtin'(Goal,true),Goal).
