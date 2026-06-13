-module(p17).
-export([split/2]).

-spec split(non_neg_integer(), [T]) -> [[T]].
split(N, L) -> split(N, L, []).

-spec split(non_neg_integer(), [T], [T]) -> [[T]].
split(0, L, New) -> [New | [L]];
split(N, [X | Rest], New) -> split(N - 1, Rest, [X | New]).
