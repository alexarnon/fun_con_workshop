-module(ex130).

-include_lib("eunit/include/eunit.hrl").

-export([pmap/2]).


pmap(F, L)
  when is_function(F), is_list(L) ->
    error(not_implemented).
    

%% Unit Tests

error_test_() ->
    [?_assertEqual([], pmap(fun(X) -> X end, [])),
     ?_assertEqual([2,4,6,8], pmap(fun(X) -> X * 2 end, [])),
     ?_assertError({pmap, _}, pmap(fun(_) -> error(xxxx) end, [a,b,c]))
    ].
