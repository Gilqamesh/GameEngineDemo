#ifndef BOUNDARYBOXSYSTEM_HPP
# define BOUNDARYBOXSYSTEM_HPP

# include "ECS/Interfaces/ISystem.hpp"
# include "Math/Vector.hpp"

namespace GilqEngine
{

class BoundaryBoxSystem : public ISystem
{
Vector<float, 3> _bottomCorner;
Vector<float, 3> _upperCorner;
public:
    BoundaryBoxSystem(Coordinator *coordinator);
    virtual void onUpdate(float dt) override;
    virtual void onRender(Shader *shader) override;
    virtual void setSystemSignature() override;
    virtual void registerComponents() override;
};

}

#endif
