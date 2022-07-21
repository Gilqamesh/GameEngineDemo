#ifndef CAMERASIMULATOR_HPP
# define CAMERASIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class CameraSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
