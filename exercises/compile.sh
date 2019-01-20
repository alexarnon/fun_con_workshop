#!/usr/bin/env bash

./clean.sh

for i in \
    streams \
    ex000 \
    ex010 \
    ex020 \
    ex030 \
    ex040 \
    ex050 \
    ex060 \
    ex080 \
    ex090 \
    ex095 \
    ex100 \
    ; do
        erlc +debug_info $i.erl
done

