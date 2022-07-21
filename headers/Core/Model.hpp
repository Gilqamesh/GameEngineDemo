#ifndef MODEL_HPP
# define MODEL_HPP

# include "pch.hpp"
# include <assimp/Importer.hpp>
# include <assimp/scene.h>
# include <assimp/postprocess.h>
# include "Core/Mesh.hpp"
# include "Interfaces/IMeshFactory.hpp"
# include "Managers/MaterialManager.hpp"
# include "Managers/TextureManager.hpp"

namespace GilqEngine
{

class Model
{
std::vector<Mesh>   _meshes;
std::string         _path;
std::string         _name;
std::string         _directory;
MaterialManager     *_materialManager;
TextureManager      *_textureManager;
Shader              *_shader;
bool                _loaded;
Vector<float, 3>    _averagePoint;
public:
    Model();
    Model(const std::string &path, const std::string &name);
    Model(IMeshFactory *meshFactory, const std::string &name);

    Model(const Model &other) = delete;
    Model &operator=(const Model &other) = delete;

    Model(Model &&other);
    Model &operator=(Model &&other);

    inline void setShader(Shader *shader) { _shader = shader; }
    inline void setMaterialManager(MaterialManager *materialManager) { _materialManager = materialManager; }
    inline void setTextureManager(TextureManager *textureManager) { _textureManager = textureManager; }

    inline const std::string &getName() const { return (_name); }
    inline Shader *getShader() const { return (_shader); }
    inline const Vector<float, 3> &getAveragePoint() const { return (_averagePoint); }

    inline bool loaded() const { return (_loaded); }

    /*
     * Sets material for all meshes in the model
     */
    void setMaterial(const std::string &materialName);

    void draw();

    void load();
private:
    void loadModel(const std::string &path);
    void processNode(aiNode *node, const aiScene *scene);
    Mesh processMesh(aiMesh *mesh, const aiScene *scene);
    Texture *loadTexture(aiMaterial* mat, aiTextureType type);
};

}

#endif
