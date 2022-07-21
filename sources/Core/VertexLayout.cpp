#include "Core/VertexLayout.hpp"

namespace GilqEngine
{

VertexLayout::VertexLayout(GLuint count, GLuint type, GLubyte normalized, GLuint stride)
    : _count(count), _type(type), _normalized(normalized), _stride(stride)
{

}

}
