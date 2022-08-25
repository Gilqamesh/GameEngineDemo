#include "Rec.hpp"

ostream &operator<<(ostream& os, const Rec& rect)
{
    os << rect.topLeftX << "x " << rect.topLeftY << "y " << rect.width << "w " << rect.height << "h";
    return (os);
}

ostream &operator<<(ostream& os, const AABB& bound)
{
    os << bound.x << "x " << bound.y << "y " << bound.w << "w " << bound.h << "h";
    return (os);
}
