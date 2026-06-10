-module(p11).
-export([encodeModified/1]).
 
encodeModified(X) -> inner(p10:encode(X)).

inner([]) -> [];
inner([{N, C}|Rest]) when N == 1 -> [C | inner(Rest)];
inner([X | Rest]) -> [X | inner(Rest)].
