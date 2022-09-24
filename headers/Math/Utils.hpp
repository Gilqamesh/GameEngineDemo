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
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

inline int getRand(int low, int high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_int_distribution<int> dist(low, high);
    return (dist(rng));
}

}

#endif
