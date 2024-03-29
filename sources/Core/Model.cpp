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
          _loaded(false)
    {
        TRACE();
    }

    Model::Model(IMeshPrimitive *meshPrimitive, const string &name)
        : _name(name),
          _materialManager(nullptr),
          _textureManager(nullptr),
          _loaded(true)
    {
        TRACE();
        _meshes.push_back(meshPrimitive->createMesh());
    }

    Model::Model(Model &&other)
        : _meshes(move(other._meshes)),
          _path(other._path),
          _name(other._name),
          _directory(other._directory),
          _materialManager(other._materialManager),
          _textureManager(other._textureManager),
          _loaded(other._loaded)
    {
        TRACE();
        other._meshes.clear();
        other._path = "";
        other._name = "";
        other._directory = "";
        other._materialManager = nullptr;
        other._textureManager = nullptr;
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
            _loaded = other._loaded;

            other._meshes.clear();
            other._path = "";
            other._name = "";
            other._directory = "";
            other._materialManager = nullptr;
            other._textureManager = nullptr;
            other._loaded = false;
        }
        return (*this);
    }

    void Model::setMaterial(const string &materialName)
    {
        TRACE();
        ASSERT(_materialManager);
        for (auto &mesh : _meshes)
        {
            mesh.setMaterial(_materialManager->getMaterial(materialName));
        }
    }

    void Model::draw(Shader *shader)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.draw(shader);
        }
    }

    void Model::drawInstanced(Shader *shader, u32 numberOfInstances)
    {
        TRACE();
        ASSERT(_meshes.size());
        _meshes[0].drawInstanced(shader, numberOfInstances);
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
        const aiScene *scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs);

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
            aiMesh *mesh = scene->mMeshes[node->mMeshes[i]];
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
        VertexData _vertexData("");
        vector<VertexAttributeFloat3> position;
        vector<VertexAttributeFloat3> normal;
        vector<VertexAttributeFloat2> texture;
        // process vertex positions, normals and texture coordinates
        for (unsigned int i = 0; i < mesh->mNumVertices; ++i)
        {
            position.push_back({mesh->mVertices[i].x,
                                mesh->mVertices[i].y,
                                mesh->mVertices[i].z});
            normal.push_back({mesh->mNormals[i].x,
                              mesh->mNormals[i].y,
                              mesh->mNormals[i].z});
            // does the mesh contain texture coordinates?
            if (mesh->mTextureCoords[0])
            {
                texture.push_back({mesh->mTextureCoords[0][i].x,
                                   mesh->mTextureCoords[0][i].y});
            }
            else
            {
                texture.push_back({0.0f,
                                   0.0f});
            }
        }
        _vertexData.pushAttributeFloat2_static(texture);
        _vertexData.pushAttributeFloat3_static(position);
        _vertexData.pushAttributeFloat3_static(normal);
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
            aiMaterial *material = scene->mMaterials[mesh->mMaterialIndex];
            auto &meshMaterial = myMesh.getMaterial();
            Texture *text = loadTexture(material, aiTextureType_AMBIENT);
            if (text)
                meshMaterial.setAmbient(text);

            text = loadTexture(material, aiTextureType_DIFFUSE);
            if (text)
                meshMaterial.setDiffuse(text);

            text = loadTexture(material, aiTextureType_SPECULAR);
            if (text)
                meshMaterial.setSpecular(text);

            text = loadTexture(material, aiTextureType_EMISSIVE);
            if (text)
                meshMaterial.setEmission(text);

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
        _vertexData.configureBufferFloat2_static();
        _vertexData.configureBufferFloat3_static();
        _vertexData.configureIndices();

        _vertexData.configureVAO();

        myMesh.setVertexData(move(_vertexData));
        return (myMesh);
    }

    /*
     * for now load only 1 texture
     */
    Texture *Model::loadTexture(aiMaterial *mat, aiTextureType type)
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

    void Model::updateBufferFloat2(u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.updateBufferFloat2(layoutIndex, data, numberOfUpdates);
        }
    }

    void Model::updateBufferFloat3(u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.updateBufferFloat3(layoutIndex, data, numberOfUpdates);
        }
    }

    void Model::updateBufferFloat4(u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.updateBufferFloat4(layoutIndex, data, numberOfUpdates);
        }
    }

    void Model::updateBufferMat4(u32 layoutIndex, const void *data, u32 numberOfUpdates)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.updateBufferMat4(layoutIndex, data, numberOfUpdates);
        }
    }

    void Model::updateIBO(const void *data, GLuint count)
    {
        TRACE();
        for (auto &mesh : _meshes)
        {
            mesh.updateIBO(data, count);
        }
    }

}
