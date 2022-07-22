#include "ECS/Components/Colliders/RectangleColliderComponent.hpp"

namespace GilqEngine
{

std::ostream &operator<<(std::ostream &os, const RectangleColliderComponent &a)
{
    os << a.topLeftX << " " << a.topLeftY << " " << a.width << " " << a.height;

    return (os);
}



RectangleColliderComponent::RectangleColliderComponent(float TopLeftX, float TopLeftY, float Width, float Height)
    : topLeftX(TopLeftX), topLeftY(TopLeftY), width(Width), height(Height)
{
    
}

}
