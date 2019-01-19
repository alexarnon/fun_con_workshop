-module(ex100).

-include_lib("eunit/include/eunit.hrl").

-export([for/3]).


for(V, Test, Body) ->
    error(not_implemented).


%% Unit Tests

for_test_() ->
    [?_assert(1 /= 1),
     ?_assertEqual(1, 2)
    ].
