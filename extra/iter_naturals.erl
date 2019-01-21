-module(iter_naturals).

-include_lib("eunit/include/eunit.hrl").

-behavior(iter).

-export([new/1]).
-export([has_next/1, next/1]).


%% Returns a new iterator over the natural numbers, starting with N.
new(N)
  when is_integer(N) ->
    iter:new(?MODULE, N).


%% Delegate implementation.
has_next(N)
  when is_integer(N) ->
    true.


%% Delegate implementation.
next(N) when is_integer(N) ->
    {N, N + 1}.


%%% Unit Tests

iter_test() ->
    I1 = ?MODULE:new(3),
    true = iter:has_next(I1),
    {3, I2} = iter:next(I1),
    true = iter:has_next(I2),
    {4, I3} = iter:next(I2),
    true = iter:has_next(I3),
    {5, _} = iter:next(I3),
    ok.
