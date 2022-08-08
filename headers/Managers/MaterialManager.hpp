#ifndef MATERIALMANAGER_HPP
# define MATERIALMANAGER_HPP

# include "Core/Material.hpp"

namespace GilqEngine
{

class MaterialManager
{
unordered_map<string, Material> _materials;
public:
    ~MaterialManager();
    
    void addMaterial(const string &materialName);
    
    void deleteMaterial(const string &materialName);
    void clear();

    Material &getMaterial(const string &materialName);
    bool exists(const string &materialName) const;
};

}

#endif
