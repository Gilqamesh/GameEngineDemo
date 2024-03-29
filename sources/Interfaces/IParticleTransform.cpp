#include "Interfaces/IParticleTransform.hpp"

namespace GilqEngine
{

Particle::Particle()
    : color(1.0f, 1.0f, 1.0f, 1.0f),
      life(0.0f)
{
    
}

Particle::Particle(
    Vector<float, 2> position,
    Vector<float, 2> velocity,
    Vector<float, 4> color,
    Vector<float, 2> size,
    float            life)
    : position(position),
      velocity(velocity),
      color(color),
      size(size),
      life(life)
{

}

}
