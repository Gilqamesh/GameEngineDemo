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

    inline bool doesIntersect(const RectangleColliderComponent& other) const
    {
        if (topLeftX + width < other.topLeftX || other.topLeftX + other.width < topLeftX)
            return (false);
        if (topLeftY + height < other.topLeftY || other.topLeftY + other.height < topLeftY)
            return (false);
        return (true);        
    }
};

ostream &operator<<(ostream &os, const RectangleColliderComponent &a);

}

#endif
