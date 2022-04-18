#ifndef TRIANGLEMESHESLAYER_HPP
# define TRIANGLEMESHESLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Core/Meshes/StaticMesh.hpp"
# include "Managers/ShaderManager.hpp"
# include "Managers/TextureManager.hpp"
# include "Managers/MaterialManager.hpp"
# include "Managers/MeshManager.hpp"
# include "Applications/MacApplication.hpp"
# include "Interfaces/ICamera.hpp"

namespace NAMESPACE
{

class TriangleMeshesLayer : public ILayer
{
MacApplication *_macApplication;
ICamera *_camera;
ShaderManager shaderManager;
TextureManager textureManager;
MaterialManager materialManager;
MeshManager meshManager;
std::unordered_set<Entity, std::hash<int> > meshes;
public:
    TriangleMeshesLayer(MacApplication *macApplication, ICamera *camera);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
