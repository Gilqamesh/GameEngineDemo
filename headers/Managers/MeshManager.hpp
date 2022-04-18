#ifndef MESHMANAGER_HPP
# define MESHMANAGER_HPP

# include "Core/Meshes/StaticMesh.hpp"
# include "Core/Meshes/DynamicMesh.hpp"
# include "ECS/Coordinator.hpp"
# include "Interfaces/IMeshFactory.hpp"

namespace NAMESPACE
{

class MeshManager
{
Coordinator _coordinator;
std::unordered_map<Entity, StaticMesh, std::hash<int> > _staticMeshes;
std::unordered_map<Entity, DynamicMesh, std::hash<int> > _dynamicMeshes;
public:
    Entity createStaticMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &modelMatrix);
    Entity createDynamicMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &modelMatrix);

    void setStaticMeshMaterial(Entity entity, Material material);
    void setDynamicMeshMaterial(Entity entity, Material material);

    void drawMeshes();

    void destroyStaticMesh(Entity entity);
    void destroyDynamicMesh(Entity entity);

    template <typename T>
    void registerComponent()
    {
        _coordinator.registerComponent<T>();
    }

    template <typename T>
    void addComponent(Entity entity, T component)
    {
        _coordinator.addComponent<T>(entity, component);
    }

    template <typename T>
    void removeComponent(Entity entity)
    {
        _coordinator.removeComponent<T>(entity);
    }

    template <typename T>
    T& getComponent(Entity entity)
    {
        return (_coordinator.getComponent<T>(entity));
    }

    template <typename T>
    ComponentId getComponentId() const
    {
        return (_coordinator.getComponentId<T>());
    }

    template <typename T>
    T* registerSystem()
    {
        return (_coordinator.registerSystem<T>());
    }

    template <typename T>
    void setSystemSignature(ComponentSignature componentSignature)
    {
        return (_coordinator.setSystemSignature<T>(componentSignature));
    }

    void print() const
    {
        _coordinator.print();
    }
};

}

#endif
