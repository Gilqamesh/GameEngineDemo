#ifndef UTILS_HPP
# define UTILS_HPP

# include "pch.hpp"

namespace GilqEngine
{

# define PI 3.14159265358979323f

inline float degToRad(float degrees)
{
    return (degrees / 180.0f * PI);
}

inline float radToDeg(float rad)
{
    return (rad / PI * 180.0f);
}

inline float getRand(float low, float high)
{
    return (low + static_cast<float>(rand()) / RAND_MAX * (high - low));
}

}

#endif
