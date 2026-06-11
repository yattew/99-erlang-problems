-module(p10).
-export([encode/1]).

-spec encode([T]) -> [{integer(), T}].
encode(X) -> inner(p09:pack(X)).

-spec inner([T]) -> [{integer(), T}].
inner([]) -> [];
inner([[X | R_inner] | Rest]) -> [{length(R_inner) + 1, X} | inner(Rest)].
