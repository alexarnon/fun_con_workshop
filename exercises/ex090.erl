-module(ex090).

-include_lib("eunit/include/eunit.hrl").

-export([filter/2, map/2]).


filter(F, L) ->
    error(not_implemented).


map(F, L) ->
    error(not_implemented).


%% Unit Tests

filter_test_() ->
    [?_assertEqual([1,2,3], filter(fun(X) -> X < 4 end, [1,2,3,4,5])),
     ?_assertEqual([], filter(fun(_) -> true end, [])),
     ?_assertEqual([], filter(fun(_) -> false end, [a, b, c])),
     ?_assertEqual([1,2,3], filter(fun(X) -> X < 4 end, [1,2,3,4,5,6])),
     ?_assertEqual(["", "abba", "qweewq"],
                   filter(fun(Word) -> Word == lists:reverse(Word) end,
                          ["", "abab", "abba", "qweqwe", "qweewq"]))
    ].

map_test_() ->
    [?_assertEqual([2,4,6,8,10], map(fun(X) -> X * 2 end, [1,2,3,4,5])),
     ?_assertEqual([], map(fun(X) -> X end, [])),
     ?_assertEqual([a, b, c], map(fun(X) -> X end, [a, b, c])),
     ?_assertEqual([5,6,7], map(fun(X) -> X + 4 end, [1,2,3]))
    ].

