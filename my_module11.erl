-module(my_module11).
-export([decode/1]).
decode(List) -> decode(List, []).
decode([], Acc) -> lists:reverse(Acc);
decode([{N, E} | T], Acc) -> decode(T, expand(N, E, Acc));
decode([E | T], Acc) -> decode(T, [E | Acc]).
expand(0, _, Acc) -> Acc;
expand(N, E, Acc) -> expand(N - 1, E, [E | Acc]).

%%my_module11:decode([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).
