ones(T, F, N) :- functor(T, F, N), setOne(T, N).

setOne(_, 0) :- !.
setOne(T, N) :- arg(N, T, 1),
                Nm1 is N-1, setOne(T, Nm1).
