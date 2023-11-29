cmake_minimum_required(VERSION 3.16)

project(STL_Assignment
    LANGUAGES CXX
)

add_executable(assignment
    src/main.cpp
    src/cout_validation.cpp
)

target_include_directories(assignment
    PRIVATE
        src
)

set_property(TARGET assignment PROPERTY CXX_STANDARD 20)
