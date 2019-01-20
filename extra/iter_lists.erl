-module(iter_lists).

-include_lib("eunit/include/eunit.hrl").

-export([new/1]).
-export([has_next/1, next/1]).


%% Returns a new iterator over the list.
new(L)
  when is_list(L) ->
    iter:new(?MODULE, L).


%% Delegate implementation.
has_next([]) ->
    false;
has_next(L) when is_list(L) ->
    true.


%% Delegate implementation.
next([H|T]) ->
    {H, T}.


%%% Unit Tests

empty_test() ->
    I0 = new([]),
    false = iter:has_next(I0),
    ok.

one_test() ->
    I1 = new([a]),
    true = iter:has_next(I1),
    {a, I2} = iter:next(I1),
    false = iter:has_next(I2),
    ok.

two_test() ->
    I1 = new([a,b]),
    true = iter:has_next(I1),
    {a, I2} = iter:next(I1),
    true = iter:has_next(I2),
    {b, I3} = iter:next(I2),
    false = iter:has_next(I3),
    ok.


error_test() ->
    %% Here because too lazy to create a test module.
    try
        iter:next(new([])),
        error(unexpected_success)
    catch
        error:iter_at_end ->
            ok
    end.
