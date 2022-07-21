#ifndef MATERIALMANAGER_HPP
# define MATERIALMANAGER_HPP

# include "Core/Material.hpp"

namespace GilqEngine
{

class MaterialManager
{
std::unordered_map<std::string, Material> _materials;
public:
    ~MaterialManager();
    void addMaterial(const std::string &materialName);
    
    void deleteMaterial(const std::string &materialName);
    void clear();

    Material &getMaterial(const std::string &materialName);
    bool exists(const std::string &materialName) const;
};

}

#endif
