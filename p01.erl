-module(p01).
-export([last/1]).

last([A]) -> A;
last([_A | Rest]) -> last(Rest).
