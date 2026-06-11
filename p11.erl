-module(p11).
-export([encodeModified/1]).

-spec encodeModified([T]) -> [{non_neg_integer(), T} | T].
encodeModified(X) -> inner(p10:encode(X)).

-spec inner([{non_neg_integer(), T}]) -> [{non_neg_integer(), T} | T].
inner([]) -> [];
inner([{N, C} | Rest]) when N == 1 -> [C | inner(Rest)];
inner([X | Rest]) -> [X | inner(Rest)].
