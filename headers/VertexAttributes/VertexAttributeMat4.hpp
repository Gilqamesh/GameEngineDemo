#ifndef VERTEXATTRIBUTEMAT4_HPP
# define VERTEXATTRIBUTEMAT4_HPP

# include "Interfaces/IVertexAttribute.hpp"

namespace GilqEngine
{
class VertexAttributeMat4 : public IVertexAttribute
{
Matrix<float, 4, 4> _m;
public:
    VertexAttributeMat4() = default;
    VertexAttributeMat4(const Matrix<float, 4, 4>& m);

    size_t size();

    /**
     * Since a vertex attribute's data can only be up to 4, this function returns with a layout of 4.
     * So this needs to be called 4 times, each time with 4 * sizeof(float) offsets
     */
    static VertexLayout layout();
};

}

#endif
