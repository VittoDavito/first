-module(my_module13).
-export([dupli/1]).
dupli(List) -> dupli(List, []).
dupli([], Acc) -> lists:reverse(Acc);
dupli([H | T], Acc) -> dupli(T, [H, H | Acc]).



%%my_module13:dupli([a, b, c, c, d]).