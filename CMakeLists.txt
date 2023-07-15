cmake_minimum_required(VERSION 3.25.1)

project (Athena)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++14")
set (source_dir_lex "${PROJECT_SOURCE_DIR}/src/lex/")
set (source_dir_parse "${PROJECT_SOURCE_DIR}/src/parse/")
set (source_dir_tree "${PROJECT_SOURCE_DIR}/src/tree/")

set (include_dir_lex "${PROJECT_SOURCE_DIR}/include/lex")
set (include_dir_parse "${PROJECT_SOURCE_DIR}/include/parse")
set (include_dir_tree "${PROJECT_SOURCE_DIR}/include/tree")

file (GLOB source_files "${source_dir_lex}/*.cpp" "${source_dir_parse}/*.cpp" "${source_dir_tree}/*.cpp")
file (GLOB header_files "${include_dir_lex}/*.h" "${include_dir_parse}/*.h" "${include_dir_tree}/*.h")
file(COPY ${source_dir_lex}/test.txt DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

add_executable (${PROJECT_NAME} ${source_files} ${header_files})

target_include_directories(${PROJECT_NAME} PRIVATE ${include_dir_lex} ${include_dir_parse} ${include_dir_tree})

