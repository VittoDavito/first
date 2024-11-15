-module(my_module12).
-export([encode_direct/1]).
encode_direct(List) -> encode_direct(List, []).
encode_direct([], Acc) -> lists:reverse(Acc);
encode_direct([H | T], []) -> encode_direct(T, [{1, H}]);
encode_direct([H | T], [{N, H} | Rest]) -> encode_direct(T, [{N + 1, H} | Rest]);
encode_direct([H | T], [{1, E} | Rest]) -> encode_direct(T, [E | [{1, H} | Rest]]);
encode_direct([H | T], Acc) -> encode_direct(T, [{1, H} | Acc]).

%%  my_module12:encode_direct([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).