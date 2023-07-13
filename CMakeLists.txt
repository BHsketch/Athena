cmake_minimum_required(VERSION 3.25.1)

project (Athena)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++14")
set (source_dir "${PROJECT_SOURCE_DIR}/src/lex/")
set (include_dir "${PROJECT_SOURCE_DIR}/include/lex")

file (GLOB source_files "${source_dir}/*.cpp")
file (GLOB header_files "${include_dir}/*.h")
file(COPY ${source_dir}/test.txt DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

add_executable (${PROJECT_NAME} ${source_files} ${header_files})

target_include_directories(${PROJECT_NAME} PRIVATE ${include_dir})

