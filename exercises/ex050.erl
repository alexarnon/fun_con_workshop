-module(ex050).

-include_lib("eunit/include/eunit.hrl").

-export([rev/1]).


rev(L) ->
    error(not_implemented).


%% Unit Tests

rev_test_() ->
    [?_assertEqual([], rev([])),
     ?_assertEqual([a], rev([a])),
     ?_assertEqual([444,333,"hello",1111], rev([1111,"hello",333,444]))
    ].
