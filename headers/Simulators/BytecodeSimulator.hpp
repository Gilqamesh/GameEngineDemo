#ifndef BYTECODESIMULATOR_HPP
# define BYTECODESIMULATOR_HPP

# include "pch.hpp"
# include "Interfaces/ISimulator.hpp"

namespace GilqEngine
{

class BytecodeSimulator : public ISimulator
{
public:
    virtual void main() override;
};

}

#endif
