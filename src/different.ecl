:- lib(fd).

different(L, N) :-
    length(L, N),
    L :: 1..N,
    alldifferent(L),
    labeling(L).
