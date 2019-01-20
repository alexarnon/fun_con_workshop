#!/usr/bin/env bash

./clean.sh

for i in \
    streams \
    iter \
    iter_naturals \
    iter_lists \
    ; do
        erlc +debug_info $i.erl
done

