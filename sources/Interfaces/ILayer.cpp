#include "Interfaces/ILayer.hpp"
#include "Debug/Trace.hpp"

namespace GilqEngine
{

ILayer::ILayer(const string &name, LayerType layerType)
    : _name(name), layerType(layerType)
{
    TRACE();
}

}
