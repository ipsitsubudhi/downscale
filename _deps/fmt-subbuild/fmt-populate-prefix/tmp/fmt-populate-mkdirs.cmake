# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-src"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-build"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/tmp"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/src"
  "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ipsit-p-subudhi/Desktop/implot_demos/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
