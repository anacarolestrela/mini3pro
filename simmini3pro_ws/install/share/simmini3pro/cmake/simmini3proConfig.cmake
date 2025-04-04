# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_simmini3pro_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED simmini3pro_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(simmini3pro_FOUND FALSE)
  elseif(NOT simmini3pro_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(simmini3pro_FOUND FALSE)
  endif()
  return()
endif()
set(_simmini3pro_CONFIG_INCLUDED TRUE)

# output package information
if(NOT simmini3pro_FIND_QUIETLY)
  message(STATUS "Found simmini3pro: 0.0.0 (${simmini3pro_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'simmini3pro' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${simmini3pro_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(simmini3pro_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${simmini3pro_DIR}/${_extra}")
endforeach()
