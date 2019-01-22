-module(ex020).

-include_lib("eunit/include/eunit.hrl").

-export([repeat/2]).


repeat(0, _) ->
    [];
repeat(N, X) when N > 0 ->
    [X | repeat(N-1, X)].


%% Unit Tests

repeat_test_() ->
    [?_assertEqual([], repeat(0, a)),
     ?_assertEqual([a], repeat(1, a)),
     ?_assertEqual([a,a,a], repeat(3, a)),
     ?_assertEqual([a,a,a,a,a,a], repeat(6, a))
    ].
