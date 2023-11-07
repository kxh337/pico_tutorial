cmake_minimum_required(VERSION 3.13)

# include SDK based on PICO_SDK_PATH
include(pico_sdk_import.cmake)

project(my_project)

# init the Pico SDK
pico_sdk_init()

add_executable(hello_world
    hello_world.cpp
)

target_link_libraries(hello_world pico_stdlib)

# create map/bin/hex/uf2 file in addition to ELF
pico_add_extra_outupts(hello_world)
