-module(my_module8).
-export([pack/1]).
pack(List) -> pack(List, []).
pack([], Acc) -> lists:reverse(Acc);
pack([H | T], []) -> pack(T, [[H]]);
pack([H | T], [[H | SubList] | Rest]) -> pack(T, [[H, H | SubList] | Rest]);
pack([H | T], Acc) -> pack(T, [[H] | Acc]).


%%my_module8:pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).