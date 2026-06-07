-module(p07).
-export([flatten/1]).

-spec flatten([_]) -> [_].
flatten([]) -> [];
flatten([[L | R]]) -> [L | flatten(R)];
flatten([L | R]) -> [L | flatten(R)].
