#ifndef REC_H
# define REC_H

# include "typedefs.h"
# include <random>

typedef struct Rec
{
    r32 topLeftX;
    r32 topLeftY;
    r32 width;
    r32 height;

    inline b32 doesRecIntersect(const Rec& that) const
    {
        return (topLeftX < that.topLeftX + that.width && that.topLeftX < topLeftX + width &&
                topLeftY < that.topLeftY + that.height && that.topLeftY < topLeftY + height);
    }

    inline b32 isPointInRect(r32 x, r32 y) const
    {
        return (x >= topLeftX && y >= topLeftY && x <= topLeftX + width && y <= topLeftY + height);
    }
} Rec;

inline float getRand(float low, float high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

ostream &operator<<(ostream& os, const Rec& rect);

#endif
