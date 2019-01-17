-module(ex000).

-include_lib("eunit/include/eunit.hrl").

-export([f/0, g/1]).

f() ->
    "hi there!".

g(N) ->
    X = N + 3,
    Y = X * 4,
    Y + 3.


%% Unit Tests

f_test() ->
    ?_assert(not string:is_empty(f())).

g_test_() ->
    [?_assertEqual(15, g(0)),
     ?_assertEqual(19, g(1))
    ].
