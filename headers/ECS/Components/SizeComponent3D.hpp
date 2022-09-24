#ifndef SIZECOMPONENT3D_HPP
# define SIZECOMPONENT3D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct SizeComponent3D
{
    SizeComponent3D() = default;
    SizeComponent3D(float width, float height, float depth);
    SizeComponent3D(Vector<float, 3> size);
    Vector<float, 3> size;
};

ostream &operator<<(ostream &os, const SizeComponent3D &a);

}

#endif
