#ifndef TRIANGLEMESHESLAYER_HPP
# define TRIANGLEMESHESLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Applications/MacApplication.hpp"
# include "Meshes/StaticMesh.hpp"

namespace NAMESPACE
{

class TriangleMeshesLayer : public ILayer
{
MacApplication *_macApplication;
std::vector<StaticMesh> triangleMeshes;
public:
    TriangleMeshesLayer(MacApplication *macApplication);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
