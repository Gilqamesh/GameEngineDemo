#include "Managers/MeshManager.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

MeshManager::MeshManager()
{
    
}

Entity MeshManager::createMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &transform)
{
    TRACE();
    Entity mesh = _coordinator.createEntity();
    _meshes[mesh] = meshFactory->createMesh(transform);
    return (mesh);
}

void MeshManager::setMeshMaterial(Entity mesh, const Material &material)
{
    TRACE();
    ASSERT(_meshes.count(mesh));
    _meshes[mesh].setMaterial(material);
}

void MeshManager::drawMeshes()
{
    TRACE();
    for (auto &mesh : _meshes)
    {
        mesh.second.draw();
    }
}

void MeshManager::destroyMesh(Entity entity)
{
    TRACE();
    _meshes.erase(entity);
    _coordinator.destroyEntity(entity);
}

void MeshManager::updateVertexAttribute_Position(Entity mesh, VertexVector<PositionVertexAttribute> &data)
{
    TRACE();
    auto &VertexData = _meshes[mesh].getVertexData();
    VertexData.updateVBO_position(data);
}

void MeshManager::updateVertexAttribute_Normal(Entity mesh, VertexVector<NormalVertexAttribute> &data)
{
    TRACE();
    auto &VertexData = _meshes[mesh].getVertexData();
    VertexData.updateVBO_normal(data);
}

void MeshManager::updateVertexAttribute_Texture(Entity mesh, VertexVector<TextureVertexAttribute> &data)
{
    TRACE();
    auto &VertexData = _meshes[mesh].getVertexData();
    VertexData.updateVBO_texture(data);
}

}
