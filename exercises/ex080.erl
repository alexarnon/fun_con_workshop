-module(ex080).

-include_lib("eunit/include/eunit.hrl").

-export([wc/1]).


wc(Str) ->
    error(not_implemented).


%% Unit Tests

wc_test_() ->
    [
        ?_assertEqual(0, wc("")),
        ?_assertEqual(0, wc("   ")),
        ?_assertEqual(1, wc("hello")),
        ?_assertEqual(1, wc("  hello   ")),
        ?_assertEqual(2, wc(" aa bbb   cccc   "))
    ].
