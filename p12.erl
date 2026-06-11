-module(p12).
-export([decode/1]).

-spec decode([{non_neg_integer(), T}]) -> [T].
decode(L) -> [X || {C, X} <- L, _ <- lists:duplicate(C, true)].
