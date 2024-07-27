#!/bin/bash

# exit on error
set -e

mkdir -p Build_577_Test trace_set trace_unset
cd Build_577_Test

rm -rf *
export CPM_SOURCE_CACHE=~/.cache/CPM
cmake --trace .. > ../trace_set/1.trace 2>&1
cmake --trace .. > ../trace_set/2.trace 2>&1

rm -rf *
export -n CPM_SOURCE_CACHE=~/.cache/CPM
cmake --trace .. > ../trace_unset/1.trace 2>&1
cmake --trace .. > ../trace_unset/2.trace 2>&1 || true  # don't exit when this fails

cd ..

meld trace_set trace_unset
