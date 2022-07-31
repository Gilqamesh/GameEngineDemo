#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"

namespace GilqEngine
{

ostream &operator<<(ostream &os, const RectangleColliderComponent &a)
{
    os << a.position << " " << a.size;

    return (os);
}



RectangleColliderComponent::RectangleColliderComponent(Vector<float, 2> position, Vector<float, 2> size)
    : position(position), size(size)
{
    
}

bool RectangleColliderComponent::doesRayIntersect(
    Vector<float, 2> rayOrigin,
    Vector<float, 2> rayDirection,
    Vector<float, 2>& contactPoint,
    Vector<float, 2>& contactNormal,
    float &tHitNear) const
{
    // source: https://www.youtube.com/watch?v=8JJ-4JgR7Dg
    contactNormal = { 0.0f, 0.0f };
    contactPoint = { 0.0f, 0.0f };

    Vector<float, 2> invRayDir = element_wise_divide(Vector<float, 2>(1.0f, 1.0f), rayDirection);

    Vector<float, 2> tNear = element_wise_multiply(position - rayOrigin, invRayDir);
    Vector<float, 2> tFar  = element_wise_multiply(position + size - rayOrigin, invRayDir);

    if (isnan(tFar[1]) || isnan(tFar[0])) return (false);
    if (isnan(tNear[1]) || isnan(tNear[0])) return (false);

    if (tNear[0] > tFar[0]) swap(tNear[0], tFar[0]);
    if (tNear[1] > tFar[1]) swap(tNear[1], tFar[1]);

    if (tNear[0] > tFar[1] || tNear[1] > tFar[0]) return (false);

    tHitNear = max(tNear[0], tNear[1]);
    float tHitFar = min(tFar[0], tFar[1]);

    if (tHitFar < 0.0f) return (false);

    contactPoint = rayOrigin + rayDirection * tHitNear;

    if (tNear[0] > tNear[1])
    {
        if (invRayDir[0] < 0.0f)
        {
            contactNormal = { 1.0f, 0.0f };
        }
        else
        {
            contactNormal = { -1.0f, 0.0f };
        }
    }
    else if (tNear[0] < tNear[1])
    {
        if (invRayDir[1] < 0.0f)
        {
            contactNormal = { 0.0f, 1.0f };
        }
        else
        {
            contactNormal = { 0.0f, -1.0f };
        }
    }

    return (true);
}

bool RectangleColliderComponent::dynamicRecIntersect(
        Vector<float, 2> velocity,
        const RectangleColliderComponent& target,
        Vector<float, 2>& contactPoint,
        Vector<float, 2>& contactNormal,
        float &contactTime,
        float deltaTime) const
{
    if (velocity[0] == 0.0f && velocity[1] == 0.0f)
        return (false);

    RectangleColliderComponent expandedTarget(target.position - size / 2.0f, target.size + size);

    if (expandedTarget.doesRayIntersect(position + size / 2.0f, velocity * deltaTime,
        contactPoint, contactNormal, contactTime))
    {
        return (contactTime >= 0.0f && contactTime < 1.0f);
    }

    return (false);
}

}
