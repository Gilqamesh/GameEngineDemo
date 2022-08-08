#ifndef PCH_HPP
# define PCH_HPP

/**
 * This file should serve as a precompiled header, so only put stuff here that will not change
 */

// # define G_RELEASE
# define G_DEBUG

#if !defined(G_RELEASE) && !defined(G_DEBUG)
# error G_RELEASE OR G_DEBUG NEEDS TO BE DEFINED
#endif

#if defined(G_RELEASE)
# define NDEBUG
#endif

# if defined(_WIN32)
#  define WINDOWS
#  include <Windows.h>
# elif defined(__APPLE__) || defined(__linux__)
#  define LINUX
#  include <unistd.h>
# else
#  error OS IS NOT SUPPORTED
# endif

# include <iostream>
# include <fstream>
# include <sstream>
# include <string>
# include <queue>
# include <mutex>
# include <array>
# include <math.h>
# include <GL/glew.h>
# include <GLFW/glfw3.h>
# include <stack>
# include <bitset>
# include <csignal>
# include <memory>
# include "Debug/Trace.hpp"
# include "Debug/OpenGL.hpp"
# include "Debug/Exception.hpp"
# include <unordered_set>
# include <exception>
# include <unordered_map>
# include <functional>
# include <vector>
# include <typeinfo>
# include <ctime>
# include <cmath>
# include <cstdint>
# include <list>
# include <cassert>
# include <random>
# include "Math/Matrix.hpp"
# include "Math/Quaternion.hpp"
# include "Math/Utils.hpp"
# include "Math/Vector.hpp"
# include "Log.hpp"

typedef int8_t int8;
typedef int16_t int16;
typedef int32_t int32;
typedef int64_t int64;
typedef int32 bool32;

typedef uint8_t uint8;
typedef uint16_t uint16;
typedef uint32_t uint32;
typedef uint64_t uint64;

typedef float real32;
typedef double real64;

# define TARGET_FPS 60

using namespace std;

#endif
