#!/bin/bash

set -e

flags=()

sdk=/Developer/SDKs/MacOSX10.4u.sdk
if [[ -e $sdk ]]; then
    flags+=(-mmacosx-version-min=10.4 -isysroot "$sdk")
fi

for arch in "-arch i386" "-arch x86_64" "-m32" "-m64"; do
    g++ "${arch}" --version |& grep error &>/dev/null || flags+=("${arch}")
done

set -x
g++ "${flags[@]}" -o ldid ldid.cpp -I. -x c sha1.c
