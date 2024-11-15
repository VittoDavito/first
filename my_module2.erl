-module(my_module2).
-export([element_at/2]).
element_at([X | _], 1) -> X;
element_at([_ | Tail], K) when K > 1 -> element_at(Tail, K - 1).