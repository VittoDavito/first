-module(my_module4).
-export([reverse/1]).
reverse([]) -> [];
reverse([Head | Tail]) ->
    reverse(Tail) ++ [Head].

% my_module4:reverse([a, b, c, d, e]).