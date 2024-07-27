#!/bin/bash

# exit on error
set -e

mkdir -p Build_577_Test
cd Build_577_Test

rm -rf *
export CPM_SOURCE_CACHE=~/.cache/CPM
cmake .. > ../set_1.trace 2>&1
cmake .. > ../set_2.trace 2>&1

rm -rf *
export -n CPM_SOURCE_CACHE=~/.cache/CPM
cmake .. > ../unset_1.trace 2>&1
cmake .. > ../unset_2.trace 2>&1
