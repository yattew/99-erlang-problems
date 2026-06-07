-module(p02).
-export([penultimate/1]).

-spec penultimate([T]) -> T | {error, empty_list}.
penultimate([]) -> {error, empty_list};
penultimate([A, _B]) -> A;
penultimate([_A | Rest]) -> penultimate(Rest).
