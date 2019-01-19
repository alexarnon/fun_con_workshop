-module(ex040).

-include_lib("eunit/include/eunit.hrl").

-export([len/1]).


len(L) ->
    error(not_implemented).


%% Unit Tests

len_test_() ->
    [?_assertEqual(0, len([])),
     ?_assertEqual(1, len([aaa])),
     ?_assertEqual(4, len([aaa, bbb, ccc, "hello"]))
    ].
