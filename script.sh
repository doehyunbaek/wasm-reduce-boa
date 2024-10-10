#!/bin/bah

if [ -z "$BINARYEN_ROOT" ]; then
    echo "Error: BINARYEN_ROOT environment variable is not set"
    echo "https://github.com/WebAssembly/binaryen/blob/871ff0d4f910b565c15f82e8f3c9aa769b01d286/src/support/path.cpp#L95"
    exit 1
fi

timeout 3600s wasm-reduce -to 60 -b $BINARYEN_ROOT/bin '--command=./oracle.py ./test.wasm' -t ./test.wasm -w ./work.wasm ./boa.wasm