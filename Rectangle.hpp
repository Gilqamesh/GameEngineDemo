#ifndef RECTANGLE_H
# define RECTANGLE_H

# include "typedefs.h"

struct Rectangle
{
    r32 topLeftX;
    r32 topLeftY;
    r32 width;
    r32 height;

    inline b32 doesRecIntersect(const Rectangle& that) const
    {
        return (topLeftX < that.topLeftX + that.width && that.topLeftX < topLeftX + width &&
                topLeftY < that.topLeftY + that.height && that.topLeftY < topLeftY + height);
    }

    inline b32 isPointInRect(r32 x, r32 y) const
    {
        return (x >= topLeftX && y >= topLeftY && x <= topLeftX + width && y <= topLeftY + height);
    }
};

ostream &operator<<(ostream& os, const Rectangle& rect);

#endif
