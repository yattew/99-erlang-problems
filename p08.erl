-module(p08).
-export([compress/1]).

-spec compress([T]) -> [T].
compress([]) ->
    [];
compress([X | []]) ->
    [X];
compress([X, Y | Rest]) when X =:= Y ->
    compress([Y | Rest]);
compress([X, Y | Rest]) when X /= Y ->
    [X | compress([Y | Rest])].
