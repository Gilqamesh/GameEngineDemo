#ifndef UTILS_HPP
# define UTILS_HPP

# include "pch.hpp"

namespace NAMESPACE
{

inline float degToRad(float degrees)
{
    return (degrees / 180.0f * 3.14159265358979323f);
}

inline float getRand(float low, float high)
{
    return (std::rand() / (float)RAND_MAX * (high - low));
}

}

#endif
