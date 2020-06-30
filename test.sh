#!/bin/bash

assert() {
    expexted="$1"
    input="$2"

    ./Encc "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expexted" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
        fi
}

assert 0 0
assert 42 42

echo OK

