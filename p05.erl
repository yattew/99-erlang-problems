-module(p05).
-export([reverse/1]).

-spec reverse([T]) -> [T].
reverse(X) -> reverse(X, []).

-spec reverse([T], [T]) -> [T].
reverse([], New) -> New;
reverse([X | Rest], New) -> reverse(Rest, [X | New]).
