#ifndef TRIANGLEMESHESLAYER_HPP
# define TRIANGLEMESHESLAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Meshes/StaticMesh.hpp"
# include "Managers/ShaderManager.hpp"
# include "Managers/TextureManager.hpp"

namespace NAMESPACE
{

class TriangleMeshesLayer : public ILayer
{
std::vector<StaticMesh> triangleMeshes;
ShaderManager shaderManager;
TextureManager textureManager;
public:
    TriangleMeshesLayer();
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
