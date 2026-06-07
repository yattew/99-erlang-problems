-module(p02).
-export([penultimate/1]).

penultimate([A, _B]) -> A;
penultimate([_A | Rest]) -> penultimate(Rest).
