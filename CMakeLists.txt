cmake_minimum_required(VERSION 3.12)

# set(CMAKE_VERBOSE_MAKEFILE on)

set(PROJECT_NAME "GameEngine")
set(SRC_DIR "sources")
file(GLOB_RECURSE SRC_FILES ${SRC_DIR}/*.cpp)
set(GLFW_PATH "/Users/edavid/.brew/Cellar/glfw/3.3.7")
set(GLEW_PATH "/Users/edavid/.brew/Cellar/glew/2.2.0_1")
# set(ASSIMP_PATH "/Users/edavid/.brew/Cellar/assimp/5.2.4")
include_directories(${GLFW_PATH}/include)
include_directories(${GLEW_PATH}/include)
include_directories(${ASSIMP_PATH}/include)
include_directories(headers)

# installing dependencies
set(ASSIMP_URL "https://github.com/assimp/assimp.git")
set(DEPENDENCIES_DIR "dependencies")
set(ASSIMP_PATH ${DEPENDENCIES_DIR}/Assimp)

include(ExternalProject)
if (NOT EXISTS "${ASSIMP_PATH}")
    ExternalProject_Add(Assimp
    DOWNLOAD_COMMAND git clone --depth 1 --branch "v5.2.4" ${ASSIMP_URL} ${ASSIMP_PATH})
    # ExternalProject_Add(Assimp )
endif()

# add_custom_command(
#     OUTPUT "${MY_EXTRACTED_FILE}"
#     COMMAND command to unpack
#     DEPENDS "${DEPENDENCIES_DIR}")

if (MSVC)
    set(OPEN_GL_LINK opengl32)
else()
    set(OPEN_GL_LINK -framework\ OpenGl)
endif()
set(LINK_FLAGS ${GLFW_PATH}/lib/libglfw.dylib ${GLEW_PATH}/lib/libGLEW.dylib ${ASSIMP_PATH}/lib/libassimp.dylib)

# set the project name
project(${PROJECT_NAME})

find_package(OpenGL REQUIRED)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if (MSVC)
    add_compile_options(-Oi -FC -Zi -WX -W4 -nologo -EHa -wd4100 -wd4189 -wd4702 -wd4505 -wd4996 -wd4005 /std:c++14)
else()
    add_compile_options(-Wall -Wextra -Werror -std=c++14)
endif()

# add the executable
add_executable(${PROJECT_NAME} ${SRC_FILES})

target_precompile_headers(${PROJECT_NAME} PUBLIC headers/pch.hpp)

# linking
set_property(TARGET ${PROJECT_NAME} APPEND_STRING PROPERTY LINK_FLAGS "${OPEN_GL_LINK}")
target_link_libraries(${PROJECT_NAME} ${LINK_FLAGS})

# put both exe and dll into a single build directory
set(BUILD_DIR "build")
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR})
set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${BUILD_DIR})
