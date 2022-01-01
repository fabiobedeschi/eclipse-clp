:- lib(fd).

simple_element :-
    I :: 2..5,
    V :: 1..5,
    element(I, [1,4,2,3,6], V),
    I #> V.
