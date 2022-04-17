#include "Interfaces/IMesh.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

IMesh::IMesh(const Material &material)
    : _material(material)
{
    TRACE();
}

}
