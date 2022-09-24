#ifndef PARTICLE_HPP
# define PARTICLE_HPP

# include "pch.hpp"

namespace GilqEngine
{

struct Particle
{
    Vector<float, 2> position;
    Vector<float, 2> velocity;
    Vector<float, 4> color;
    Vector<float, 2> size;
    float            life;

    Particle();
    Particle(
        Vector<float, 2> position,
        Vector<float, 2> velocity,
        Vector<float, 4> color,
        Vector<float, 2> size,
        float            life);
};

}

#endif
