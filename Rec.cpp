#include "Rec.hpp"

ostream &operator<<(ostream& os, const Rec& rect)
{
    os << rect.topLeftX << " " << rect.topLeftY << " " << rect.width << " " << rect.height;
    return (os);
}
