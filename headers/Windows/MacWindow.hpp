#ifndef MACWINDOW_HPP
# define MACWINDOW_HPP

# include "Interfaces/IWindow.hpp"

namespace GilqEngine
{

struct BlendFuncParams
{
    GLenum sfactor;
    GLenum dfactor;
};

class MacWindow : public IWindow
{
GLFWwindow *_window;
struct MacWindowProps
{
    MacWindowProps();
    int                 width;
    int                 height;
    string              title;
    eventCallbackFn     eventCallback;
    bool                VSync;
    float               previousMouseX;
    float               previousMouseY;
    float               xMouseChange;
    float               yMouseChange;
    BlendFuncParams     blendingParameters;
} _windowProps;
public:
    MacWindow(const MacWindowProps &windowProps = MacWindowProps());
    virtual void onUpdate() override;

    virtual inline int getWidth() const override { return (_windowProps.width); }
    virtual inline int getHeight() const override { return (_windowProps.height); }
    inline float getYMouseChange() const { return (_windowProps.yMouseChange); }
    inline float getXMouseChange() const { return (_windowProps.xMouseChange); }
    inline float getXMousePosition() const { return (_windowProps.previousMouseX); }
    inline float getYMousePosition() const { return (_windowProps.previousMouseY); }
    inline Vector<float, 2> getMousePosition() const { return (Vector<float, 2>(_windowProps.previousMouseX, _windowProps.previousMouseY)); }
    /* Try to avoid the need for this */
    virtual inline GLFWwindow *getWindow() const override { return (_window); }

    virtual void setVSync(bool enabled) override;
    virtual inline void setEventCallback(const eventCallbackFn &fn) override { _windowProps.eventCallback = fn; }

    virtual inline bool isVSync() override { return (_windowProps.VSync); }

    inline void enableBlending() { GLCall(glEnable(GL_BLEND)); setDefaultBlending(); }
    inline void setDefaultBlending() { setBlendFunc(GL_SRC_COLOR, GL_ONE_MINUS_SRC_ALPHA); }
    inline void setBlendFunc(GLenum sfactor, GLenum dfactor) {
        _windowProps.blendingParameters.sfactor = sfactor;
        _windowProps.blendingParameters.dfactor = dfactor;
        GLCall(glBlendFunc(sfactor, dfactor));
    }
    inline void setBlendFunc(BlendFuncParams blendFuncParams) {
        _windowProps.blendingParameters = blendFuncParams;
        GLCall(glBlendFunc(blendFuncParams.sfactor, blendFuncParams.dfactor));
    }
    inline BlendFuncParams getBlendParams(void) const { return (_windowProps.blendingParameters); }

    inline void disableBlending() const { GLCall(glDisable(GL_BLEND)); }

    inline void enableDepthTest() const { GLCall(glEnable(GL_DEPTH_TEST)); }
    inline void disableDepthTest() const { GLCall(glDisable(GL_DEPTH_TEST)); }

    inline void enablePolygonMode_Point() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_POINT)); }
    inline void enablePolygonMode_Line() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_LINE)); }
    inline void enablePolygonMode_Fill() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_FILL)); }

    inline void setCursorPosition(float x, float y) const { glfwSetCursorPos(_window, x, y); }
};

}

#endif
