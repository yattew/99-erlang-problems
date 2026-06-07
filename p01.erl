-module(p01).
-export([last/1]).

-spec last([T]) -> T | {error, empty_list}.
last([]) -> {error, empty_list};
last([A]) -> A;
last([_A | Rest]) -> last(Rest).
