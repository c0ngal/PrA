#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CURL::libcurl_shared" for configuration "Release"
set_property(TARGET CURL::libcurl_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CURL::libcurl_shared PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcurl.4.8.0.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libcurl.4.dylib"
  )

list(APPEND _cmake_import_check_targets CURL::libcurl_shared )
list(APPEND _cmake_import_check_files_for_CURL::libcurl_shared "${_IMPORT_PREFIX}/lib/libcurl.4.8.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
