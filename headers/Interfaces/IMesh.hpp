#ifndef IMESH_HPP
# define IMESH_HPP

# include "pch.hpp"
# include "Interfaces/IVertex.hpp"
# include "Core/VertexArray.hpp"
# include "Core/VertexBuffer.hpp"
# include "Core/IndexBuffer.hpp"
# include "Core/Material.hpp"

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
