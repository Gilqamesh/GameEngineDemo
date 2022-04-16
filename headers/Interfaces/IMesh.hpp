#ifndef IMESH_HPP
# define IMESH_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class IMesh
{
public:
    virtual ~IMesh() = default;
    virtual void drawMesh() = 0;
};

}

#endif
