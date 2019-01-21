#!/usr/bin/env bash

./clean.sh

for i in \
    streams \
    iter \
    iter_naturals \
    iter_lists \
    ; do
        erlc -pa . +debug_info $i.erl
done

