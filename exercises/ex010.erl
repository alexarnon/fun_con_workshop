-module(ex010).

-include_lib("eunit/include/eunit.hrl").

-export([sum/1]).


sum(N) ->
    error(not_implemented).


%% Unit Tests

sum_test() ->
    ?assertEqual(0, sum(0)),
    ?assertEqual(1, sum(1)),
    ?assertEqual(3, sum(2)),
    ?assertEqual(6, sum(3)),
    ?assertEqual(10, sum(4)),
    ok.
    
