#include "Core/Model.hpp"
#include "Log.hpp"

namespace GilqEngine
{

Model::Model()
{
    TRACE();
}

Model::Model(const string &path, const string &name)
    : _path(path),
    _name(name),
    _materialManager(nullptr),
    _textureManager(nullptr),
    _shader(nullptr),
    _loaded(false)
{
    TRACE();
}

Model::Model(IMeshFactory *meshFactory, const string &name)
    : _name(name),
    _materialManager(nullptr),
    _textureManager(nullptr),
    _shader(nullptr),
    _loaded(true)
{
    TRACE();
    _meshes.push_back(meshFactory->createMesh());
}

Model::Model(Model &&other)
    : _meshes(move(other._meshes)),
    _path(other._path),
    _name(other._name),
    _directory(other._directory),
    _materialManager(other._materialManager),
    _textureManager(other._textureManager),
    _shader(other._shader),
    _loaded(other._loaded)
{
    TRACE();
    other._path = "";
    other._name = "";
    other._materialManager = nullptr;
    other._textureManager = nullptr;
    other._shader = nullptr;
    other._loaded = false;
}

Model &Model::operator=(Model &&other)
{
    TRACE();
    if (this != &other)
    {
        _meshes = move(other._meshes);
        _path = other._path;
        _name = other._name;
        _directory = other._directory;
        _materialManager = other._materialManager;
        _textureManager = other._textureManager;
        _shader = other._shader;
        _loaded = other._loaded;

        other._path = "";
        other._name = "";
        other._materialManager = nullptr;
        other._textureManager = nullptr;
        other._shader = nullptr;
        other._loaded = false;
    }
    return (*this);
}

void Model::setMaterial(const string &materialName)
{
    TRACE();
    ASSERT(_materialManager);
    for (auto &mesh :_meshes)
    {
        mesh.setMaterial(_materialManager->getMaterial(materialName));
    }
}

void Model::draw()
{
    TRACE();
    for (auto &mesh : _meshes)
    {
        mesh.draw(_shader);
    }
}

void Model::load()
{
    TRACE();
    ASSERT(_materialManager && _textureManager);
    if (loaded() == false)
        loadModel(_path);
}

void Model::loadModel(const string &path)
{
    TRACE();
    Assimp::Importer importer;
    const aiScene* scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs);

    if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode)
    {
        LOG_E("ERROR::ASSIMP::" << importer.GetErrorString());
        return;
    }
    _directory = path.substr(0, path.find_last_of('/'));

    processNode(scene->mRootNode, scene);
}

void Model::processNode(aiNode *node, const aiScene *scene)
{
    TRACE();
    // process all the node's meshes (if any)
    for (unsigned int i = 0; i < node->mNumMeshes; ++i)
    {
        aiMesh* mesh = scene->mMeshes[node->mMeshes[i]];
        _meshes.push_back(processMesh(mesh, scene));
    }
    // then do the same for each of its children
    for (unsigned int i = 0; i < node->mNumChildren; ++i)
    {
        processNode(node->mChildren[i], scene);
    }
}

Mesh Model::processMesh(aiMesh *mesh, const aiScene *scene)
{
    TRACE();
    Mesh myMesh;
    VertexData _vertexData;
    // process vertex positions, normals and texture coordinates
    for (unsigned int i = 0; i < mesh->mNumVertices; ++i)
    {
        _vertexData.pushPositionAttribute3D({
            mesh->mVertices[i].x,
            mesh->mVertices[i].y,
            mesh->mVertices[i].z
        });
        _vertexData.pushNormalAttribute({
            mesh->mNormals[i].x,
            mesh->mNormals[i].y,
            mesh->mNormals[i].z
        });
        // does the mesh contain texture coordinates?
        if (mesh->mTextureCoords[0])
        {
            _vertexData.pushTextureAttribute({
                mesh->mTextureCoords[0][i].x,
                mesh->mTextureCoords[0][i].y
            });
        }
        else
        {
            _vertexData.pushTextureAttribute({
                0.0f,
                0.0f
            });
        }
    }
    // process indices
    for (unsigned int i = 0; i < mesh->mNumFaces; ++i)
    {
        aiFace face = mesh->mFaces[i];
        // should be multiples of 3 if the aiProcess_Triangulate flag is enabled
        for (unsigned int j = 0; j < face.mNumIndices; ++j)
            _vertexData.pushIndex(face.mIndices[j]);
    }
    // process material
    if (mesh->mMaterialIndex >= 0)
    {
        aiMaterial* material = scene->mMaterials[mesh->mMaterialIndex];
        auto &meshMaterial = myMesh.getMaterial();
        Texture *texture = loadTexture(material, aiTextureType_AMBIENT);
        if (texture) meshMaterial.setAmbient(texture);

        texture = loadTexture(material, aiTextureType_DIFFUSE);
        if (texture) meshMaterial.setDiffuse(texture);

        texture = loadTexture(material, aiTextureType_SPECULAR);
        if (texture) meshMaterial.setSpecular(texture);

        texture = loadTexture(material, aiTextureType_EMISSIVE);
        if (texture) meshMaterial.setEmission(texture);

        float shininess;
        if (aiReturn_SUCCESS == material->Get(AI_MATKEY_SHININESS, shininess))
        {
            meshMaterial.setShininess(shininess);
        }
    }
    else
    {
        PRINT_HERE();
        TERMINATE("No index to texture map has been found for mesh, please handle this case!");
    }
    _vertexData.configurePositionAttribute();
    _vertexData.configureNormalAttribute();
    _vertexData.configureTextureAttribute();
    _vertexData.configureIndices();

    _vertexData.configureVAO();

    myMesh.setVertexData(move(_vertexData));
    return (myMesh);
}

/*
 * for now load only 1 texture
 */
Texture *Model::loadTexture(aiMaterial* mat, aiTextureType type)
{
    for (unsigned int i = 0; i < mat->GetTextureCount(type); ++i)
    {
        aiString str;
        mat->GetTexture(type, i, &str);
        string originalPath(str.C_Str());
        if (originalPath.find_last_of("\\") != string::npos)
            originalPath = originalPath.substr(originalPath.find_last_of("\\") + 1);
        if (originalPath.find_last_of("/") != string::npos)
            originalPath = originalPath.substr(originalPath.find_last_of("/") + 1);
        string texturePath(_directory + "/" + originalPath);
        if (_textureManager->exists(texturePath) == true)
            return (_textureManager->getTexture(texturePath));
        LOG("Loading texture " << texturePath << "...");
        _textureManager->addTexture(texturePath, texturePath);
        LOG("Finished loading the texture.");
        return (_textureManager->getTexture(texturePath));
    }
    return (nullptr);
}

void Model::updateVBO_position2D(const void *data, GLuint size)
{
    TRACE();
    for (auto& mesh : _meshes)
    {
        mesh.updateVBO_position2D(data, size);
    }
}

void Model::updateVBO_position3D(const void *data, GLuint size)
{
    TRACE();
    for (auto& mesh : _meshes)
    {
        mesh.updateVBO_position3D(data, size);
    }
}

void Model::updateVBO_normal(const void *data, GLuint size)
{
    TRACE();
    for (auto& mesh : _meshes)
    {
        mesh.updateVBO_normal(data, size);
    }
}

void Model::updateVBO_texture(const void *data, GLuint size)
{
    TRACE();
    for (auto& mesh : _meshes)
    {
        mesh.updateVBO_texture(data, size);
    }
}

void Model::updateIBO(const void *data, GLuint count)
{
    TRACE();
    for (auto& mesh : _meshes)
    {
        mesh.updateIBO(data, count);
    }
}

}
