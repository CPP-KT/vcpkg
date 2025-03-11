include("${CMAKE_CURRENT_LIST_DIR}/../linux.cmake")

set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")

set(CMAKE_C_FLAGS "-stdlib=libc++ -fsanitize=address,undefined -D_LIBCPP_HARDENING_MODE=_LIBCPP_HARDENING_MODE_DEBUG" CACHE STRING "")
set(CMAKE_CXX_FLAGS "-stdlib=libc++ -fsanitize=address,undefined -D_LIBCPP_HARDENING_MODE=_LIBCPP_HARDENING_MODE_DEBUG" CACHE STRING "")

foreach(linker IN ITEMS "SHARED" "MODULE" "EXE")
  set(CMAKE_${linker}_LINKER_FLAGS_INIT "-stdlib=libc++ -fsanitize=address,undefined" CACHE STRING "")
  set(CMAKE_${linker}_LINKER_FLAGS "-stdlib=libc++ -fsanitize=address,undefined" CACHE STRING "")
endforeach()
