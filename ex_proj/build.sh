#!/bin/bash
cp /opt/pico-sdk/external/pico_sdk_import.cmake ./pico_sdk_import.cmake
mkdir build
cd build
cmake ../
make $1
