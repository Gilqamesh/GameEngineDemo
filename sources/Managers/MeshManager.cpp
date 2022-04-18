#include "Managers/MeshManager.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

Entity MeshManager::createStaticMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &modelMatrix)
{
    TRACE();
    Entity entity = _coordinator.createEntity();
    _staticMeshes.insert(std::pair<Entity, StaticMesh>(entity, meshFactory->createStaticMesh(modelMatrix)));

    return (entity);
}

Entity MeshManager::createDynamicMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &modelMatrix)
{
    TRACE();
    Entity entity = _coordinator.createEntity();
    _dynamicMeshes.insert(std::pair<Entity, DynamicMesh>(entity, meshFactory->createDynamicMesh(modelMatrix)));

    return (entity);
}

void MeshManager::setStaticMeshMaterial(Entity entity, Material material)
{
    TRACE();
    _staticMeshes.at(entity).setMaterial(material);
}

void MeshManager::setDynamicMeshMaterial(Entity entity, Material material)
{
    TRACE();
    _dynamicMeshes.at(entity).setMaterial(material);
}

void MeshManager::drawMeshes()
{
    TRACE();
    for (auto &staticMesh : _staticMeshes)
    {
        staticMesh.second.draw();
    }
    for (auto &dynamicMesh : _dynamicMeshes)
    {
        dynamicMesh.second.draw();
    }
}

void MeshManager::destroyStaticMesh(Entity entity)
{
    TRACE();
    _staticMeshes.erase(entity);
}

void MeshManager::destroyDynamicMesh(Entity entity)
{
    TRACE();
    _dynamicMeshes.erase(entity);
}

}
