#ifndef MESH_HPP
# define MESH_HPP

# include "Core/VertexData.hpp"
# include "Core/Material.hpp"

namespace NAMESPACE
{

class Mesh
{
friend class MeshManager;
VertexData  _vertexData;
Material    _material;
public:
    Mesh();

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    Mesh(const Mesh &other) = delete;
    Mesh &operator=(const Mesh &other) = delete;

    Mesh(Mesh &&other);
    Mesh &operator=(Mesh &&other);

    inline VertexData &getVertexData() { return (_vertexData); }
    inline const VertexData &getVertexData() const { return (_vertexData); }
    inline Material &getMaterial() { return (_material); }
    inline const Material &getMaterial() const { return (_material); }

    inline void setVertexData(VertexData &&vertexData) { _vertexData = std::move(vertexData); }
    inline void setMaterial(const Material &material) { _material = material; }

    void draw();
};

}

#endif
