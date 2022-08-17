#include "Rectangle.hpp"

ostream &operator<<(ostream& os, const Rectangle& rect)
{
    os << rect.topLeftX << " " << rect.topLeftY << " " << rect.width << " " << rect.height;
    return (os);
}
