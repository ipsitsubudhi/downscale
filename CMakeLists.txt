cmake_minimum_required(VERSION 3.11.0)
project(implot_demos VERSION 0.1.0)


###############################################################################
# 3RD PARTY LIBS
###############################################################################

# FETCH CONTENT LIBS
include(FetchContent) 
# set(FETCHCONTENT_FULLY_DISCONNECTED ON)

FetchContent_Declare(fmt GIT_REPOSITORY https://github.com/fmtlib/fmt)
FetchContent_MakeAvailable(fmt)

FetchContent_Declare(glfw GIT_REPOSITORY https://github.com/glfw/glfw) 
FetchContent_MakeAvailable(glfw)

FetchContent_Declare(iir GIT_REPOSITORY https://github.com/berndporr/iir1) 
FetchContent_MakeAvailable(iir)

if (WIN32)
  set(CMAKE_USE_SCHANNEL ON)
endif()
FetchContent_Declare(curl
URL                    https://github.com/curl/curl/releases/download/curl-7_75_0/curl-7.75.0.tar.xz
URL_HASH               SHA256=fe0c49d8468249000bda75bcfdf9e30ff7e9a86d35f1a21f428d79c389d55675 # the file hash for curl-7.75.0.tar.xz
USES_TERMINAL_DOWNLOAD TRUE) 
FetchContent_MakeAvailable(curl)
add_library(curl_int INTERFACE)
target_link_libraries(curl_int INTERFACE libcurl)
target_include_directories(curl_int INTERFACE ${curl_SOURCE_DIR}/include ${curl_BINARY_DIR}/include/curl)
add_library(CURL::libcurl ALIAS curl_int)

# LOCAL LIBS

# GLAD
add_subdirectory(3rdparty/glad)

# NFD
add_subdirectory(3rdparty/nativefiledialog-extended)

# KISS FFT
set(KISS_SRC "3rdparty/kissfft/kiss_fft.h" 
             "3rdparty/kissfft/kiss_fftr.h" 
             "3rdparty/kissfft/kiss_fft.c" 
             "3rdparty/kissfft/kiss_fftr.c")

# EVERYTHING ELSE
include_directories("3rdparty" "3rdparty/kissfft")

###############################################################################
# IMGUI
###############################################################################

find_package(imgui CONFIG REQUIRED)
find_package(implot CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(fmt CONFIG REQUIRED)
find_package(PahoMqttCpp CONFIG REQUIRED)
find_package(nlohmann_json CONFIG REQUIRED)



# imnodes
add_library(imnodes 3rdparty/imnodes/imnodes.h 3rdparty/imnodes/imnodes_internal.h 3rdparty/imnodes/imnodes.cpp)
target_link_libraries(imnodes imgui::imgui)
include_directories(3rdparty/imnodes)

###############################################################################
# IMPLOT
###############################################################################




###############################################################################
# APP FRAMEWORK
###############################################################################

add_library(app 
  common/App.h
  common/App.cpp
  common/Shader.h
  common/Native.h
  common/Native.cpp
  common/Image.h
  common/Fonts/Fonts.h
  common/Fonts/FontAwesome5.cpp
  common/Fonts/RobotoRegular.cpp
  common/Fonts/RobotoBold.cpp
  common/Fonts/RobotoItalic.cpp
  common/Fonts/RobotoMonoRegular.cpp
  common/Fonts/RobotoMonoBold.cpp
  common/Fonts/RobotoMonoItalic.cpp
)
target_include_directories(app PUBLIC common)
target_link_libraries(app PRIVATE imgui::imgui implot::implot glfw glad fmt nfd)
target_compile_features(app PRIVATE cxx_std_17)


###############################################################################
# DEMO APPS
###############################################################################



# graph demo
add_executable(graph "demos/graph.cpp")
target_link_libraries(graph PRIVATE
  app
  imgui::imgui
  implot::implot
  fmt::fmt 
  glfw 
  PahoMqttCpp::paho-mqttpp3 
  nlohmann_json::nlohmann_json
)
target_include_directories(graph PRIVATE "3rdparty"
    ${Boost_INCLUDE_DIRS})
if (MSVC)
  set_target_properties(graph PROPERTIES COMPILE_FLAGS "/bigobj")
endif()

    
