-module(my_module3).
-export([list_length/1]).
list_length([]) -> 0;
list_length([_ | Tail]) -> 1 + list_length(Tail).


% my_module3:list_length([a, b, c, d, e]).