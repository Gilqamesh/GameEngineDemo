#ifndef REC_H
# define REC_H

# include "typedefs.h"
# include <random>

typedef struct AABB
{
    u16 x;
    u16 y;
    u16 w;
    u16 h;
} AABB;

typedef struct Rec
{
    r32 topLeftX;
    r32 topLeftY;
    r32 width;
    r32 height;
    r32 dx;
    r32 dy;

    inline b32 doesRecIntersect(const Rec& that) const
    {
        return (topLeftX <= that.topLeftX + that.width && that.topLeftX <= topLeftX + width &&
                topLeftY <= that.topLeftY + that.height && that.topLeftY <= topLeftY + height);
    }

    inline b32 doesAABBIntersect(const AABB &that) const
    {
        return (topLeftX <= (r32)that.x + (r32)that.w && (r32)that.x <= topLeftX + width &&
                topLeftY <= (r32)that.y + (r32)that.h && (r32)that.y <= topLeftY + height);
    }

    inline b32 isPointInRect(r32 x, r32 y) const
    {
        return (x >= topLeftX && y >= topLeftY && x <= topLeftX + width && y <= topLeftY + height);
    }

    inline b32 isXOutsideNextFrame(const AABB& bound) const
    {
        return ((topLeftX + dx >= (r32)bound.x + (r32)bound.w ||
                topLeftX + dx + width <= (r32)bound.x));
    }

    inline b32 isYOutsideNextFrame(const AABB& bound) const
    {
        return ((topLeftY + dy >= (r32)bound.y + (r32)bound.h ||
                topLeftY + dy + height <= (r32)bound.y));
    }

    inline void update(void)
    {
        topLeftX += dx;
        topLeftY += dy;
    }

} Rec;

struct Velocity
{
    r32 dx;
    r32 dy;
};

inline float getRand(float low, float high)
{
    static random_device dev;
    static mt19937 rng(dev());
    uniform_real_distribution<float> dist(low, high);
    return (dist(rng));
}

ostream &operator<<(ostream& os, const Rec& rect);
ostream &operator<<(ostream& os, const AABB& rect);

#endif
