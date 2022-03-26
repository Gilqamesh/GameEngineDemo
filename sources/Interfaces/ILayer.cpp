#include "Interfaces/ILayer.hpp"

namespace NAMESPACE
{

ILayer::ILayer(IApplication *application, LayerType layerType)
    : application(application), layerType(layerType)
{
    
}

}
