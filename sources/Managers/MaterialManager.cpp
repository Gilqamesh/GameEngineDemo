#include "Managers/MaterialManager.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

MaterialManager::~MaterialManager()
{
    TRACE();
    clear();
}

void MaterialManager::addMaterial(const std::string &materialName)
{
    TRACE();
    if (exists(materialName) == true)
        throw std::runtime_error("Material " + materialName + " already exists in MaterialManager");

    _materials[materialName] = Material(materialName);
}

void MaterialManager::deleteMaterial(const std::string &materialName)
{
    TRACE();
    if (exists(materialName) == false)
        throw std::runtime_error("Material " + materialName + " does not exist in MaterialManager");

    _materials.erase(materialName);
}

void MaterialManager::clear()
{
    TRACE();
    _materials.clear();
}

Material &MaterialManager::getMaterial(const std::string &materialName)
{
    TRACE();
    if (exists(materialName) == false)
        throw std::runtime_error("Material " + materialName + " does not exist in MaterialManager");

    return (_materials[materialName]);
}

bool MaterialManager::exists(const std::string &materialName) const
{
    TRACE();
    return (_materials.count(materialName));
}


}
