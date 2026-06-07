-module(p03).
-export([kth/2]).

kth([], _) -> {err, "out of bounds"};
kth([X | _], 1) -> X;
kth([_ | Arr], Remaining) when Remaining > 1 -> kth(Arr, Remaining - 1);
kth(_, _) -> {err, "out of bounds"}.
