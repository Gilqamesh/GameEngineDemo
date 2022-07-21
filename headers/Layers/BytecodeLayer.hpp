#ifndef BYTECODELAYER_HPP
# define BYTECODELAYER_HPP

# include "Interfaces/ILayer.hpp"
# include "Managers/ObjectCoordinator.hpp"
# include "Windows/MacWindow.hpp"

namespace GilqEngine
{

struct RectangleElement
{
    float upperLeftX;
    float upperLeftY;
    float width;
    float height;

    inline bool isInside(float X, float Y) const
    {
        return (X >= upperLeftX && X <= upperLeftX + width &&
            Y >= upperLeftY && Y <= upperLeftY + height);
    }
};

class BytecodeLayer : public ILayer
{
    MacWindow *_window;
    ObjectCoordinator _objectCoordinator;
    vector<RectangleElement> _rectangleElements;
public:
    BytecodeLayer(MacWindow *window);

    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;

private:
    void loadShaders(void);
    void loadTextures(void);
    void loadMaterials(void);
    void loadModels(void);
    void registerSystems(void);
};

}

#endif
