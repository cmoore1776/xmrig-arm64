#!/bin/sh

cd /xmrig/build
cmake .. 
make -j$(nproc)