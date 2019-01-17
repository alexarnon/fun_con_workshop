-module(ex010).

-include_lib("eunit/include/eunit.hrl").

-export([sum/1]).


sum(_) -> 
    error(not_implemented).
              

%% Unit Tests

sum_test_() ->
    [?_assertEqual(0, sum(0)),
     ?_assertEqual(1, sum(1)),
     ?_assertEqual(3, sum(2)),
     ?_assertEqual(6, sum(3)),
     ?_assertEqual(10, sum(4))
    ].
    
