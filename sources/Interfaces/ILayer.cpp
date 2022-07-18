#include "Interfaces/ILayer.hpp"
#include "Debug/Trace.hpp"

namespace NAMESPACE
{

ILayer::ILayer(const std::string &name, LayerType layerType)
    : _name(name), layerType(layerType)
{
    TRACE();
}

}
