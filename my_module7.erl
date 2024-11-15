-module(my_module7).
-export([compress/1]).
compress([]) -> [];
compress([Head | Tail]) -> compress(Head, Tail, [Head]).
compress(_, [], Acc) -> lists:reverse(Acc);
compress(Prev, [Head | Tail], Acc) when Prev == Head ->
    compress(Prev, Tail, Acc);
compress(_, [Head | Tail], Acc) ->
    compress(Head, Tail, [Head | Acc]).


%my_module7:compress([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).