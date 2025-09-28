
cmake_minimum_required(VERSION 3.15)
project(generator_app)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS FALSE)

add_executable($ENV{EXE_NAME}
    src/generator_main.cpp
)

# Use only the installed rg_utilities (headers in /usr/local/include, lib in /usr/local/lib)
find_path(RG_UTIL_INCLUDE
  NAMES random_generator.hpp
  PATHS /usr/local/include /usr/include
)

find_library(RG_UTIL_LIBRARY
  NAMES rg_utilities
  PATHS /usr/local/lib /usr/lib
)

if(NOT RG_UTIL_INCLUDE)
  message(FATAL_ERROR "rg_utilities headers not found. Expected random_generator.hpp in /usr/local/include or /usr/include")
endif()

if(NOT RG_UTIL_LIBRARY)
  message(FATAL_ERROR "rg_utilities library not found. Expected librg_utilities.so in /usr/local/lib or /usr/lib")
endif()

target_include_directories($ENV{EXE_NAME}
  PRIVATE
    ${RG_UTIL_INCLUDE}
)

target_link_libraries($ENV{EXE_NAME}
  PRIVATE
    ${RG_UTIL_LIBRARY}
)
