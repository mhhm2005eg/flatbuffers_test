cmake_minimum_required(VERSION 2.8)


project(FlatBuffers_test)

set(tools C:/MingW64)
set(CMAKE_C_COMPILER ${tools}/bin/gcc.exe)
set(CMAKE_CXX_COMPILER ${tools}/bin/g++.exe)

SET(GCC_COMPILE_FLAGS " -std=c++11 ")
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COMPILE_FLAGS}")

# SET(GCC_COVERAGE_LINK_FLAGS    "-lgcov")
link_directories(c:/Data/repositories/flatbuffers/cmake_build/)

add_executable (run_tst main.cpp)
target_link_libraries (run_tst flatbuffers)
target_include_directories (run_tst PUBLIC C:/Data/repositories/flatbuffers/include C:/Data/work/workspace/flatbuffers/out)
target_link_libraries(run_tst c:/Data/repositories/flatbuffers/cmake_build/) # also adds the required include path

