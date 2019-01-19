-module(ex060).

-include_lib("eunit/include/eunit.hrl").

-export([unspace/1]).


unspace(Str) ->
    error(not_implemented).


%% Unit Tests

unspace_test_() ->
    [?_assertEqual("", unspace("")),
     ?_assertEqual("", unspace("   ")),
     ?_assertEqual("helpme", unspace("  hel p   me "))
    ].
