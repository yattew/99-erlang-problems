-module(p10).
-export([encode/1]).

encode(X) -> inner(p09:pack(X)).

inner([]) -> [];
inner([[X | R_inner] | Rest]) -> [{length(R_inner) + 1, X} | inner(Rest)].
