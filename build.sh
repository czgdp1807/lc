#!/usr/bin/env bash

set -ex

python src/libasr/asdl_cpp.py src/libasr/ASR.asdl src/libasr/asr.h
python src/libasr/wasm_instructions_visitor.py

cmake \
    -DCMAKE_BUILD_TYPE=Debug \
    -DWITH_LLVM=yes \
    .
cmake --build . -j16
