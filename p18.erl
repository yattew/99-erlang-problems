-module(p18).
-export([slice/3]).

-spec slice(non_neg_integer(), non_neg_integer(), [T]) -> [T].
slice(0, 1, [L | _]) -> [L];
slice(0, _, [L | []]) -> [L];
slice(0, End, [L | Rest]) -> [L | slice(0, End - 1, Rest)];
slice(Start, End, [_ | Rest]) -> slice(Start - 1, End - 1, Rest).
