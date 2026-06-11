-module(p14).
-export([duplicate/1]).

-spec duplicate([T]) -> [T].
duplicate([]) -> [];
duplicate([L | Rest]) -> [L, L | duplicate(Rest)].
