cmake_minimum_required(VERSION 3.12)

# set(CMAKE_VERBOSE_MAKEFILE on)

set(PROJECT_NAME "GameEngine")
set(SRC_DIR "sources")
file(GLOB_RECURSE SRC_FILES ${SRC_DIR}/*.cpp)

include_directories(headers)

# installing dependencies
set(ASSIMP_URL "https://github.com/assimp/assimp.git")
set(ASSIMP_PATH Assimp)
set(GLEW_URL "https://github.com/Gilqamesh/GLEW")
set(GLEW_PATH GLEW)
set(GLFW_URL "https://github.com/glfw/glfw")
set(GLFW_PATH GLFW)

include(ExternalProject)
if (NOT EXISTS "${ASSIMP_PATH}")
    ExternalProject_Add(${ASSIMP_PATH}
        DOWNLOAD_COMMAND git clone --depth 1 --branch "v3.1.1" ${ASSIMP_URL} ${ASSIMP_PATH}
        PREFIX ${ASSIMP_PATH}
    )
endif()
if (NOT EXISTS "${GLFW_PATH}")
    ExternalProject_Add(${GLFW_PATH}
        DOWNLOAD_COMMAND git clone --depth 1 --branch "3.3.8" ${GLFW_URL} ${GLFW_PATH}
        PREFIX ${GLFW_PATH}
        CMAKE_ARGS -DBUILD_SHARED_LIBS=ON
    )
endif()
if (NOT EXISTS "${GLEW_PATH}")
    ExternalProject_Add(${GLEW_PATH}
        DOWNLOAD_COMMAND git clone ${GLEW_URL} ${GLEW_PATH}
        PREFIX ${GLEW_PATH}
        SOURCE_SUBDIR build/cmake
    )
endif()

include_directories(build/${ASSIMP_PATH}/src/${ASSIMP_PATH}/include)
include_directories(build/${GLFW_PATH}/src/${GLFW_PATH}/include)
include_directories(build/${GLEW_PATH}/src/${GLEW_PATH}/include)

if (MSVC)
    set(OPEN_GL_LINK opengl32)
else()
    set(OPEN_GL_LINK -framework\ OpenGl)
endif()

# set the project name
project(${PROJECT_NAME})

find_package(OpenGL REQUIRED)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if (MSVC)
    add_compile_options(-Oi -FC -Zi -WX -W4 -nologo -EHa -wd4100 -wd4189 -wd4702 -wd4505 -wd4996 -wd4005 /std:c++14)
else()
    add_compile_options(-Wall -Wextra -std=c++14)
endif()

# add the executable
add_executable(${PROJECT_NAME} ${SRC_FILES})

target_precompile_headers(${PROJECT_NAME} PUBLIC headers/pch.hpp)

# linking
set_property(TARGET ${PROJECT_NAME} APPEND_STRING PROPERTY LINK_FLAGS "${OPEN_GL_LINK}")
file(GLOB GLEW_LIB "build/${GLEW_PATH}/src/${GLEW_PATH}-build/lib/libGLEW.dylib")
file(GLOB GLFW_LIB "build/${GLFW_PATH}/src/${GLFW_PATH}-build/src/libglfw.dylib")
file(GLOB ASSIMP_LIB "build/${ASSIMP_PATH}/src/${ASSIMP_PATH}-build/code/libassimp.dylib")
target_link_libraries(${PROJECT_NAME} ${GLEW_LIB} ${GLFW_LIB} ${ASSIMP_LIB})

# put both exe and dll into a single build directory
set(BUILD_DIR "build")
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR})
set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${BUILD_DIR})
