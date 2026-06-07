-module(p06).
-export([is_palindrome/1]).

-spec is_palindrome([_]) -> boolean().
is_palindrome(L) -> L =:= p05:reverse(L).
