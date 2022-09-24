#ifndef RECTANGLECOLLIDERCOMPONENT_HPP
# define RECTANGLECOLLIDERCOMPONENT_HPP

# include "pch.hpp"

namespace GilqEngine
{

struct RectangleColliderComponent
{
    RectangleColliderComponent() = default;
    RectangleColliderComponent(Vector<float, 2> position, Vector<float, 2> size);

    Vector<float, 2> position;
    Vector<float, 2> size;

    inline bool doesRecIntersect(const RectangleColliderComponent& other) const
    {
        return (position[0] < other.position[0] + other.size[0] && other.position[0] < position[0] + size[0] &&
                position[1] < other.position[1] + other.size[1] && other.position[1] < position[1] + size[1]);
    }

    inline bool isPointInside(Vector<float, 2> p) const
    {
        return (p[0] >= position[0] && p[0] <= position[0] + size[0] &&
                p[1] >= position[1] && p[1] <= position[1] + size[1]);
    }

    bool doesRayIntersect(
        Vector<float, 2> rayOrigin,
        Vector<float, 2> rayDirection,
        Vector<float, 2>& contactPoint,
        Vector<float, 2>& contactNormal,
        float &tHitNear) const;

    bool dynamicRecIntersect(
        Vector<float, 2> velocity,
        const RectangleColliderComponent& target,
        Vector<float, 2>& contactPoint,
        Vector<float, 2>& contactNormal,
        float &tHitNear,
        float deltaTime) const;
};

ostream &operator<<(ostream &os, const RectangleColliderComponent &a);

/**
 * Extend the parameters of this rectangle based on its velocity - velocity isnt stored as part of the collider
 * NOTE(david): maybe it should be stored?
 */
RectangleColliderComponent extendRectangle(const RectangleColliderComponent& rect, Vector<float, 2> velocity, float dt);

}

#endif
