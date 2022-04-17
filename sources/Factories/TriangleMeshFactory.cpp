#include "Factories/TriangleMeshFactory.hpp"
#include "Vertices/PositionVertex.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

StaticMesh TriangleMeshFactory::createStaticMesh(const Matrix<GLfloat, 4, 4> &modelMatrix)
{
    TRACE();
    Vector<GLfloat, 4> a{0.0f, 0.0f, 0.0f};
    Vector<GLfloat, 4> b{0.0f, 0.0f, 0.0f};
    Vector<GLfloat, 4> c{0.0f, 0.0f, 0.0f};

    a = a * modelMatrix;

    std::vector<IVertex> vertices{
        PositionVertex(Vector<GLfloat, 3>(a[0], a[1], a[2])),
        PositionVertex(Vector<GLfloat, 3>(b[0], b[1], b[2])),
        PositionVertex(Vector<GLfloat, 3>(c[0], c[1], c[2]))
    };
    std::vector<GLuint> indeces{0, 1, 2};

    return (StaticMesh(vertices, indeces));
}

DynamicMesh TriangleMeshFactory::createDynamicMesh(const Matrix<GLfloat, 4, 4> &modelMatrix)
{
    TRACE();
    Vector<GLfloat, 4> a{0.0f, 0.0f, 0.0f};
    Vector<GLfloat, 4> b{0.0f, 0.0f, 0.0f};
    Vector<GLfloat, 4> c{0.0f, 0.0f, 0.0f};

    a = a * modelMatrix;

    std::vector<IVertex> vertices{
        PositionVertex(Vector<GLfloat, 3>(a[0], a[1], a[2])),
        PositionVertex(Vector<GLfloat, 3>(b[0], b[1], b[2])),
        PositionVertex(Vector<GLfloat, 3>(c[0], c[1], c[2]))
    };
    std::vector<GLuint> indeces{0, 1, 2};

    DynamicMesh triangle(vertices.size() * sizeof(vertices[0]), indeces);
    triangle.setVertexBuffer(vertices);

    return (triangle);
}


}
