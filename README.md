# lc

LC is the C frontend to LCompilers.

# Build

    mamba env create -f environment_unix.yml
    conda activate lc
    ./build.sh
    ./build/src/lc --ast-dump examples/test.cpp
