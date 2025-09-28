cmake_minimum_required(VERSION 3.15)

set(TARGET_LIB rg_utilities)
set(SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/random_generator.cpp
)
set(PUBLIC_HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/include/random_generator.hpp
)

add_library(${TARGET_LIB} SHARED ${SOURCES})

target_include_directories(${TARGET_LIB}
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# library installation
install(TARGETS rg_utilities
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/include/random_generator.hpp DESTINATION include)
