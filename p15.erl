-module(p15).
-export([duplicateN/2]).

-spec duplicateN(non_neg_integer(), [T]) -> [T].
duplicateN(I, L) -> [X || X <- L, _ <- lists:duplicate(I, true)].
