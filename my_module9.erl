-module(my_module9).
-export([encode/1]).
encode(List) -> encode(List, []).
encode([], Acc) -> lists:reverse(Acc);
encode([H | T], []) -> encode(T, [{1, H}]);
encode([H | T], [{N, H} | Rest]) -> encode(T, [{N + 1, H} | Rest]);
encode([H | T], Acc) -> encode(T, [{1, H} | Acc]).

%% my_module9:encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
