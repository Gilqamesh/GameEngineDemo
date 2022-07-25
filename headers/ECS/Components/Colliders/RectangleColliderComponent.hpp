#ifndef RECTANGLECOLLIDERCOMPONENT_HPP
# define RECTANGLECOLLIDERCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

struct RectangleColliderComponent
{
    RectangleColliderComponent() = default;
    RectangleColliderComponent(float TopLeftX, float TopLeftY, float Width, float Height);

    float topLeftX;
    float topLeftY;
    float width;
    float height;

    inline bool doesRecIntersect(const RectangleColliderComponent& other) const
    {
        if (topLeftX + width < other.topLeftX || other.topLeftX + other.width < topLeftX)
            return (false);
        if (topLeftY + height < other.topLeftY || other.topLeftY + other.height < topLeftY)
            return (false);
        return (true);        
    }

    inline bool isPointInside(Vector<float, 2> p) const
    {
        return (p[0] >= topLeftX && p[0] <= topLeftX + width &&
                p[1] >= topLeftY && p[1] <= topLeftY + height);
    }

    bool doesRayIntersect(
        Vector<float, 2> rayOrigin,
        Vector<float, 2> rayDirection,
        Vector<float, 2>& contactPoint,
        Vector<float, 2>& contactNormal,
        float &tHitNear);
};

ostream &operator<<(ostream &os, const RectangleColliderComponent &a);

}

#endif
