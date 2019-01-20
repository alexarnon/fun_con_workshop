-module(ex110).

-include_lib("eunit/include/eunit.hrl").

-export([async/1, await/1]).


async(F) when is_function(F) ->
    error(not_implemented).


await(Handle) ->
    error(not_implemented).
    

%% Unit Tests

async_await_test() ->
    222 = await(async(fun() -> 222 end)),
    ok.
