-module(iter).

-include_lib("eunit/include/eunit.hrl").

-export([new/2]).
-export([has_next/1, at_end/1, next/1]).


%% Delegate modules will return this.
new(Mod, State)
  when is_atom(Mod) ->
    {iter, Mod, State}.


%% Returns true iff there is at least another element.
%% Implemented by delegate Mod.
has_next({iter, Mod, State})
  when is_atom(Mod) ->
    Mod:has_next(State).


%% Same at: not has_next(Iter).
at_end(Iter) ->
    not has_next(Iter).


%% Advances the iterator.
%% Returns {Value, NextIter}.
%% If no next element, raises error 'iter_at_end'.
%% The delegate Mod:next(State) will return {Value, NextState}.
next({iter, Mod, State} = Iter)
  when is_atom(Mod) ->
    case has_next(Iter) of
        true ->
            {Value, NextState} = Mod:next(State),
            {Value, {iter, Mod, NextState}};
        false ->
            error(iter_at_end)
    end.
            

