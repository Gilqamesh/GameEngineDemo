#include "Rec.hpp"

ostream &operator<<(ostream& os, const Rec& rect)
{
    os << rect.topLeftX << "x " << rect.topLeftY << "y " << rect.width << "w " << rect.height << "h";
    return (os);
}
