add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|T], [H|Result]) :-
    add_at_the_end(X, T, Result).
