# Install script for directory: /home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libiir.so.1.9.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libiir.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/libiir.so.1.9.5"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/libiir.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libiir.so.1.9.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libiir.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/libiir.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iir" TYPE FILE FILES
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Biquad.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Butterworth.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Cascade.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/ChebyshevI.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/ChebyshevII.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Common.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Custom.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Layout.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/MathSupplement.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/PoleFilter.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/RBJ.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/State.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Types.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/Iir.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/iir.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/libiir_static.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iir" TYPE FILE FILES
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Biquad.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Butterworth.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Cascade.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/ChebyshevI.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/ChebyshevII.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Common.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Custom.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Layout.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/MathSupplement.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/PoleFilter.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/RBJ.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/State.h"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/iir/Types.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-src/Iir.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/iir/iirTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/iir/iirTargets.cmake"
         "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/CMakeFiles/Export/49dfae13bbd8da3a39252320d51ae132/iirTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/iir/iirTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/iir/iirTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/iir" TYPE FILE FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/CMakeFiles/Export/49dfae13bbd8da3a39252320d51ae132/iirTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/iir" TYPE FILE FILES "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/CMakeFiles/Export/49dfae13bbd8da3a39252320d51ae132/iirTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/iir" TYPE FILE FILES
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/iirConfig.cmake"
    "/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/iirConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ipsit-p-subudhi/Desktop/implot_demos/build/_deps/iir-build/demo/cmake_install.cmake")

endif()

