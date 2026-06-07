-module(p04).
-export([len/1]).

-spec len([_]) -> non_neg_integer().
len([]) -> 0;
len([_ | Rest]) -> 1 + len(Rest).
