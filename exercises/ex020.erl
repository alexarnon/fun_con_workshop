-module(ex020).

-include_lib("eunit/include/eunit.hrl").

-export([repeat/2]).


repeat(N, X) ->
    error(not_implemented).


%% Unit Tests

repeat_test_() ->
    [?_assertEqual([], repeat(0, a)),
     ?_assertEqual([a], repeat(1, a)),
     ?_assertEqual([a,a,a], repeat(3, a)),
     ?_assertEqual([a,a,a,a,a,a], repeat(6, a))
    ].
