#ifndef MESHMANAGER_HPP
# define MESHMANAGER_HPP

# include "Core/Mesh.hpp"
# include "ECS/Coordinator.hpp"
# include "Interfaces/IMeshFactory.hpp"
# include "VertexAttributes/PositionVertexAttribute.hpp"
# include "VertexAttributes/NormalVertexAttribute.hpp"
# include "VertexAttributes/TextureVertexAttribute.hpp"

namespace NAMESPACE
{

class MeshManager
{
Coordinator                                         _coordinator;
std::unordered_map<Entity, Mesh, std::hash<int> >   _meshes;
public:
    /*
     * Register VertexAttributes for now
     */
    MeshManager();

    /*
     * 'transform' is initial transform matrix used to create the Mesh object
     */
    Entity createMesh(IMeshFactory *meshFactory, const Matrix<GLfloat, 4, 4> &transform);

    void setMeshMaterial(Entity mesh, const Material &material);

    void configureMesh(Entity mesh);

    void drawMeshes();

    void destroyMesh(Entity mesh);

    template <typename T>
    void registerComponent()
    {
        _coordinator.registerComponent<T>();
    }

    template <typename T>
    void addComponent(Entity mesh, T component)
    {
        _coordinator.addComponent<T>(mesh, component);
    }

    /*
     * Caller's responsibility:
     *      - only call on attributes that are set as a Dynamic Buffer Object
     * Updates the data for the vertexAttribute stored in the mesh
     */
    void updateVertexAttribute_Position(Entity mesh, VertexVector<PositionVertexAttribute> &data);
    void updateVertexAttribute_Normal(Entity mesh, VertexVector<NormalVertexAttribute> &data);
    void updateVertexAttribute_Texture(Entity mesh, VertexVector<TextureVertexAttribute> &data);

    template <typename T>
    void removeComponent(Entity mesh)
    {
        _coordinator.removeComponent<T>(mesh);
    }

    template <typename T>
    T& getComponent(Entity mesh)
    {
        return (_coordinator.getComponent<T>(mesh));
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
