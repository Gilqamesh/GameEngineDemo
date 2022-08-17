#ifndef TYPEDEFS_H
# define TYPEDEFS_H

# include <array>
# include <vector>
# include <iostream>
# include <cstddef>
# include <unistd.h>

using namespace std;

# define LOG(x) (cout << x << endl)
# define LINE() (LOG(__LINE__ << " " << __FILE__))

// # define NDEBUG

# ifndef NDEBUG
#  define ASSERT(x) {\
    if (!(x)){\
        LOG("!!!!!!!!!!!!!!!!!!!! " << #x << " !!!!!!!!!!!!!!!!!!!!");\
        LINE();\
        exit(1);\
    }\
}
# else
#  define ASSERT(x)
# endif

typedef int8_t  i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;
typedef i32     b32;

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef float  r32;
typedef double r64;

#endif
