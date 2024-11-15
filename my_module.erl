-module(my_module).
-export([my_last/1]).
my_last([X]) -> X;
my_last([_ | Tail]) -> my_last(Tail).