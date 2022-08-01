#ifndef SIZECOMPONENT2D_HPP
# define SIZECOMPONENT2D_HPP

# include "pch.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

struct SizeComponent2D
{
    SizeComponent2D() = default;
    SizeComponent2D(float width, float height);
    SizeComponent2D(Vector<float, 2> size);
    Vector<float, 2> size;
};

ostream &operator<<(ostream &os, const SizeComponent2D &a);

}

#endif
