-module(p16).
-export([drop/2]).

-spec drop(non_neg_integer(), [T]) -> [T].
drop(N, T) -> drop(N, T, 1).

-spec drop(non_neg_integer(), [T], non_neg_integer()) -> [T].
drop(_, [], _) -> [];
drop(N, [L | Rest], C) when N /= C -> [L | drop(N, Rest, C+1)];
drop(N, [_ | Rest], _) -> drop(N, Rest, 0).
