-module(my_module1).
-export([my_but_last/1]).
my_but_last([X, _]) -> X;
my_but_last([_ | Tail]) -> my_but_last(Tail).