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
GLenum                  _mode;
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

    /*
     * Modes: GL_POINTS, GL_LINE_STRIP, GL_LINE_LOOP, GL_LINES, GL_LINE_STRIP_ADJACENCY,
     *        GL_LINES_ADJACENCY, GL_TRIANGLE_STRIP, GL_TRIANGLE_FAN, GL_TRIANGLES,
     *        GL_TRIANGLE_STRIP_ADJACENCY, GL_TRIANGLES_ADJACENCY, GL_PATCHES
     */
    void setDrawMode(GLenum mode);

    void draw(Shader *shader);

    /*
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(const void *data, GLuint size);
    void updateVBO_position3D(const void *data, GLuint size);
    void updateVBO_normal(const void *data, GLuint size);
    void updateVBO_texture(const void *data, GLuint size);
    void updateIBO(const void *data, GLuint count);
};

}

#endif
