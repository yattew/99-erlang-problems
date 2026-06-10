-module(p12).
-export([decode/1]).


decode(L) -> [X || {C, X} <- L, _ <- lists:duplicate(C, true)].
