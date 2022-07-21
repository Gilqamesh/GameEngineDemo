#ifndef QUADTREESIMULATOR_HPP
# define QUADTREESIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class QuadTreeSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
