#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "eclipse-paho-mqtt-c::paho-mqtt3c-static" for configuration "Release"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3c-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3c-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpaho-mqtt3c.a"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3c-static )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3c-static "${_IMPORT_PREFIX}/lib/libpaho-mqtt3c.a" )

# Import target "eclipse-paho-mqtt-c::paho-mqtt3a-static" for configuration "Release"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3a-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3a-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpaho-mqtt3a.a"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3a-static )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3a-static "${_IMPORT_PREFIX}/lib/libpaho-mqtt3a.a" )

# Import target "eclipse-paho-mqtt-c::paho-mqtt3cs-static" for configuration "Release"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3cs-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3cs-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpaho-mqtt3cs.a"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3cs-static )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3cs-static "${_IMPORT_PREFIX}/lib/libpaho-mqtt3cs.a" )

# Import target "eclipse-paho-mqtt-c::paho-mqtt3as-static" for configuration "Release"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3as-static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3as-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpaho-mqtt3as.a"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3as-static )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3as-static "${_IMPORT_PREFIX}/lib/libpaho-mqtt3as.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
