-module(p03).
-export([kth/2]).

-spec kth([T], integer()) -> T | {error, out_of_bounds} | {error, empty_list}.
kth([], _) -> {error, empty_list};
kth([X | _], 1) -> X;
kth([_ | Arr], Remaining) when Remaining > 1 -> kth(Arr, Remaining - 1);
kth(_, _) -> {error, out_of_bounds}.
