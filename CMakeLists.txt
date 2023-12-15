cmake_minimum_required(VERSION 3.12)
project(TestExec)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_COMPILER /usr/bin/g++)

set(CMAKE_CXX_STANDARD 11)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}")

# Find Eigen
find_package(Eigen3 REQUIRED)

find_package(MKL REQUIRED)

set(LIB_SRC_DIR ${CMAKE_SOURCE_DIR}/external/time_series/src)
set(LIB_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/external/time_series/include)

# Add the executable target
file(GLOB_RECURSE LIB_SRCS ${LIB_SRC_DIR}/*.cpp)
add_library(time_series SHARED ${LIB_SRCS})

# Set compiler flags
target_compile_definitions(time_series PRIVATE -DMKL_ILP64 -DUSE_EIGEN -DUSE_OMP -DUSE_MKL)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m64 -Wl,--no-as-needed")

# Include directories
target_include_directories(time_series PRIVATE ${EIGEN3_INCLUDE_DIR} ${MKL_INCLUDE_DIR})

# Link libraries
target_link_libraries(time_series PRIVATE ${MKL_CORE_LIBRARY} ${MKL_THREAD_LIBRARY} ${MKL_ILP64_LIBRARY} -lgomp -lpthread -lm -ldl)

# Install target
install(TARGETS time_series LIBRARY DESTINATION ${CMAKE_SOURCE_DIR}/external/time_series/lib)
