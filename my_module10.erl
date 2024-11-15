-module(my_module10).
-export([encode_modified/1]).
encode_modified(List) -> encode_modified_helper(encode(List), []).
encode_modified_helper([], Acc) -> lists:reverse(Acc);
encode_modified_helper([{1, E} | T], Acc) -> encode_modified_helper(T, [E | Acc]);
encode_modified_helper([{N, E} | T], Acc) -> encode_modified_helper(T, [{N, E} | Acc]).
encode(List) -> encode(List, []).
encode([], Acc) -> lists:reverse(Acc);
encode([H | T], []) -> encode(T, [{1, H}]);
encode([H | T], [{N, H} | Rest]) -> encode(T, [{N + 1, H} | Rest]);
encode([H | T], Acc) -> encode(T, [{1, H} | Acc]).
