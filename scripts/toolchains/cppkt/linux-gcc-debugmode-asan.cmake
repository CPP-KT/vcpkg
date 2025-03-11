include("${CMAKE_CURRENT_LIST_DIR}/../linux.cmake")

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")

set(CMAKE_C_FLAGS "-fsanitize=address,undefined -D_GLIBCXX_DEBUG" CACHE STRING "")
set(CMAKE_CXX_FLAGS "-fsanitize=address,undefined -D_GLIBCXX_DEBUG" CACHE STRING "")

foreach(linker IN ITEMS "SHARED" "MODULE" "EXE")
  set(CMAKE_${linker}_LINKER_FLAGS_INIT "-fsanitize=address,undefined" CACHE STRING "")
  set(CMAKE_${linker}_LINKER_FLAGS "-fsanitize=address,undefined" CACHE STRING "")
endforeach()
