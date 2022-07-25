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
vector<Mesh>        _meshes;
string              _path;
string              _name;
string              _directory;
MaterialManager     *_materialManager;
TextureManager      *_textureManager;
Shader              *_shader;
bool                _loaded;
public:
    Model();
    Model(const string &path, const string &name);
    Model(IMeshFactory *meshFactory, const string &name);

    Model(const Model &other) = delete;
    Model &operator=(const Model &other) = delete;

    Model(Model &&other);
    Model &operator=(Model &&other);

    inline void setShader(Shader *shader) { _shader = shader; }
    inline void setMaterialManager(MaterialManager *materialManager) { _materialManager = materialManager; }
    inline void setTextureManager(TextureManager *textureManager) { _textureManager = textureManager; }

    inline const string &getName() const { TRACE(); return (_name); }
    inline Shader *getShader() const { TRACE(); return (_shader); }

    inline bool loaded() const { return (_loaded); }

    /*
     * Sets material for all meshes in the model
     */
    void setMaterial(const string &materialName);

    void draw();

    void load();

    /*
     * Currently this will apply on all the meshes stored by the model.. not good
     * Caller's responsibility:
     *      - Only call these functions if the specific Buffer Object is dynamically set
     */
    void updateVBO_position2D(const void *data, GLuint size);
    void updateVBO_position3D(const void *data, GLuint size);
    void updateVBO_normal(const void *data, GLuint size);
    void updateVBO_texture(const void *data, GLuint size);
    void updateIBO(const void *data, GLuint count);
private:
    void loadModel(const string &path);
    void processNode(aiNode *node, const aiScene *scene);
    Mesh processMesh(aiMesh *mesh, const aiScene *scene);
    Texture *loadTexture(aiMaterial* mat, aiTextureType type);
};

}

#endif
