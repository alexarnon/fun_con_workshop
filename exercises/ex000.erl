-module(ex000).

-export([f/0, g/1]).

f() ->
    "hi there!".

g(N) ->
    X = N + 3,
    Y = X * 4,
    Y + 3.
