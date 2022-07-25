#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"

namespace GilqEngine
{

ostream &operator<<(ostream &os, const RectangleColliderComponent &a)
{
    os << a.topLeftX << " " << a.topLeftY << " " << a.width << " " << a.height;

    return (os);
}



RectangleColliderComponent::RectangleColliderComponent(float TopLeftX, float TopLeftY, float Width, float Height)
    : topLeftX(TopLeftX), topLeftY(TopLeftY), width(Width), height(Height)
{
    
}

bool RectangleColliderComponent::doesRayIntersect(
    Vector<float, 2> rayOrigin,
    Vector<float, 2> rayDirection,
    Vector<float, 2>& contactPoint,
    Vector<float, 2>& contactNormal,
    float &tHitNear)
{
    // source: https://www.youtube.com/watch?v=8JJ-4JgR7Dg
    Vector<float, 2> tNear = (Vector<float, 2>(topLeftX, topLeftY) - rayOrigin) / rayDirection;
    Vector<float, 2> tFar  = (Vector<float, 2>(topLeftX + width, topLeftY + height) - rayOrigin) / rayDirection;

    if (tNear[0] > tFar[0]) swap(tNear[0], tFar[0]);
    if (tNear[1] > tFar[1]) swap(tNear[1], tFar[1]);

    if (tNear[0] > tFar[1] || tNear[1] > tFar[0]) return (false);

    tHitNear = max(tNear[0], tNear[1]);
    float tHitFar  = max(tFar[0], tFar[1]);

    if (tHitFar < 0) return (false);

    contactPoint = rayOrigin + rayDirection * tHitNear;

    if (tNear[0] > tNear[1])
    {
        if (rayDirection[0] < 0.0f)
        {
            contactNormal = {1.0f, 0.0f};
        }
        else
        {
            contactNormal = {-1.0f ,0.0f};
        }
    }
    else if (tNear[0] < tNear[1])
    {
        if (rayDirection[1] < 0.0f)
        {
            contactNormal = {0.0f, 1.0f};
        }
        else
        {
            contactNormal = {0.0f, -1.0f};
        }
    }

    return (true);
}

}
