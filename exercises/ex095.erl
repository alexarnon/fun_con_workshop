-module(ex095).

-include_lib("eunit/include/eunit.hrl").

-export([reduce/3]).


reduce(F, Z, L) ->
    error(not_implemented).


%% Unit Tests

reduce_test_() ->
    [?_assertEqual(111, reduce(fun(X, A) -> X + A end, 111, [])),
     ?_assertEqual(10, reduce(fun(X, A) -> X + A end, 0, [1, 2, 3, 4]))
    ].
