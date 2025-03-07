# Copyright © 2020 Advanced Micro Devices, Inc. All rights reserved


macro(FetchContent_MakeAvailable NAME)
  FetchContent_GetProperties(${NAME})
  if(NOT ${NAME}_POPULATED)
    FetchContent_Populate(${NAME})
    add_subdirectory(${${NAME}_SOURCE_DIR} ${${NAME}_BINARY_DIR})
  endif()
endmacro()
