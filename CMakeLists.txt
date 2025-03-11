cmake_minimum_required(VERSION 3.13)

include($ENV{PICO_SDK_PATH}/pico_sdk_init.cmake)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(zig-pico)
enable_language(C CXX ASM)

pico_sdk_init()

add_executable(${PROJECT_NAME})

# zig
add_library(ziglib STATIC IMPORTED)
set_property(TARGET ziglib PROPERTY IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/zig-out/lib/libzig-main.a)

target_link_libraries(${PROJECT_NAME}
    ziglib
    pico_stdlib
)

pico_enable_stdio_usb(${PROJECT_NAME} ON)
pico_enable_stdio_uart(${PROJECT_NAME} OFF)

pico_add_extra_outputs(${PROJECT_NAME})

