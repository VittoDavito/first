-module(my_module5).
-export([is_palindrome/1]).
is_palindrome(List) -> is_palindrome(List, lists:reverse(List)).
is_palindrome([], []) -> true;
is_palindrome([Head1 | Tail1], [Head2 | Tail2]) when Head1 == Head2 ->
    is_palindrome(Tail1, Tail2);
is_palindrome(_, _) -> false.


%my_module5:is_palindrome([x, a, m, a, x]).
%my_module5:is_palindrome([a, b, c]).