#ifndef MESH_HPP
# define MESH_HPP

# include "Core/VertexData.hpp"
# include "Core/Material.hpp"
# include "Math/Matrix.hpp"

namespace GilqEngine
{

class Mesh
{
VertexData              _vertexData;
Material                _material;
public:
    Mesh();

    // to avoid destruction of OpenGL context objects: VertexArray, VertexBuffer, IndexBuffer
    Mesh(const Mesh &other) = delete;
    Mesh &operator=(const Mesh &other) = delete;

    Mesh(Mesh &&other);
    Mesh &operator=(Mesh &&other);

    inline Material &getMaterial() { return (_material); }
    inline const Material &getMaterial() const { return (_material); }

    inline void setVertexData(VertexData &&vertexData) { _vertexData = move(vertexData); }
    inline void setMaterial(const Material &material) { _material = material; }

    void draw(Shader *shader);

    /**
     * Draw instanced arrays
     */
    void drawInstanced(Shader *shader, uint32 numberOfInstances);

    /*
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(const void *data, GLuint size);
    void updateVBO_position3D(const void *data, GLuint size);
    void updateVBO_normal(const void *data, GLuint size);
    void updateVBO_texture(const void *data, GLuint size);
    void updateVBO_modelMatrix(const void *data, GLuint size);
    void updateIBO(const void *data, GLuint count);
};

}

#endif
