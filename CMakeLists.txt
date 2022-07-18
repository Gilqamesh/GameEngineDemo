cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME "GameEngine")
set(SRC_DIR "sources")
file(GLOB_RECURSE SRC_FILES ${SRC_DIR}/*.cpp)
set(GLEW_PATH "C:\\Users\\Gilqamesh\\Desktop\\glew-2.1.0")
set(GLFW_PATH "C:\\Users\\Gilqamesh\\Desktop\\glfw-3.3.6")
set(ASSIMP_PATH "C:\\Users\\Gilqamesh\\Desktop\\assimp-3.1.1")
include_directories(${GLFW_PATH}/include)
include_directories(${GLEW_PATH}/include)
include_directories(${ASSIMP_PATH}/include)
include_directories(headers)

set(LINK_FLAGS ${GLFW_PATH}/Win32/src/Debug/glfw3.lib ${GLEW_PATH}/bin32/lib/Debug/glew32d.lib ${ASSIMP_PATH}/Win32/code/Debug/assimpd.lib)

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
target_link_libraries(${PROJECT_NAME} ${LINK_FLAGS} opengl32)

# put both exe and dll into a single build directory
set(BUILD_DIR "build")
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR})
set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${BUILD_DIR})
