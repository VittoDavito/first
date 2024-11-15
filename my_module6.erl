-module(my_module6).
-export([flatten/1]).
flatten([]) -> [];
flatten([Head | Tail]) when is_list(Head) ->
    flatten(Head) ++ flatten(Tail);
flatten([Head | Tail]) ->
    [Head | flatten(Tail)].

% my_module6:flatten([1, [2, 3], [4, [5, 6]], 7]).