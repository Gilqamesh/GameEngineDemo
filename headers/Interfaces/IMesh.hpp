#ifndef IMESH_HPP
# define IMESH_HPP

# include "pch.hpp"
# include "Core/Material.hpp"

namespace NAMESPACE
{

class IMesh
{
public:
    IMesh() = default;
    IMesh(const Material &material);

    inline Material &getMaterial() { return (_material); }
    inline const Material &getMaterial() const { return (_material); }

    inline void setMaterial(const Material &material) { _material = material; }
protected:
Material _material;
};

}

#endif
