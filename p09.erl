-module(p09).
-export([pack/1]).

-spec pack([T]) -> [[T]].
pack([]) -> [];
pack([X | Rest]) -> lists:reverse(pack(Rest, [X], [])).

-spec pack([T], [T], [[T]]) -> [[T]].
pack([], Acc, Final) -> [Acc | Final];
pack([X | Rest], [A | Acc], Final) when X =:= A -> pack(Rest, [X, A | Acc], Final);
pack([X | Rest], [A | Acc], Final) when X /= A -> pack(Rest, [X], [[A | Acc] | Final]).
