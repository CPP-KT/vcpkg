include("${CMAKE_CURRENT_LIST_DIR}/../linux.cmake")

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")

set(CMAKE_C_FLAGS "-D_GLIBCXX_DEBUG" CACHE STRING "")
set(CMAKE_CXX_FLAGS "-D_GLIBCXX_DEBUG" CACHE STRING "")
