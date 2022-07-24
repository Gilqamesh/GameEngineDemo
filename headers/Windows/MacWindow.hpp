#ifndef MACWINDOW_HPP
# define MACWINDOW_HPP

# include "Interfaces/IWindow.hpp"

namespace GilqEngine
{

class MacWindow : public IWindow
{
GLFWwindow *_window;
struct MacWindowProps
{
    MacWindowProps();
    int                 width;
    int                 height;
    string         title;
    eventCallbackFn     eventCallback;
    bool                VSync;
    double              previousMouseX;
    double              previousMouseY;
    double              xMouseChange;
    double              yMouseChange;
} _windowProps;
public:
    MacWindow(const MacWindowProps &windowProps = MacWindowProps());
    virtual void onUpdate() override;

    virtual inline int getWidth() const override { return (_windowProps.width); }
    virtual inline int getHeight() const override { return (_windowProps.height); }
    inline double getXMouseChange() const { return (_windowProps.xMouseChange); }
    inline double getYMouseChange() const { return (_windowProps.yMouseChange); }
    inline double getXMousePosition() const { return (_windowProps.previousMouseX); }
    inline double getYMousePosition() const { return (_windowProps.previousMouseY); }
    /* Try to avoid the need for this */
    virtual inline GLFWwindow *getWindow() const override { return (_window); }

    virtual void setVSync(bool enabled) override;
    virtual inline void setEventCallback(const eventCallbackFn &fn) override { _windowProps.eventCallback = fn; }

    virtual inline bool isVSync() override { return (_windowProps.VSync); }

    inline void enableBlending() const { GLCall(glEnable(GL_BLEND)); }
    inline void setBlendFunc(GLenum sfactor, GLenum dfactor) { GLCall(glBlendFunc(sfactor, dfactor)); }

    inline void disableBlending() const { GLCall(glDisable(GL_BLEND)); }

    inline void enableDepthTest() const { GLCall(glEnable(GL_DEPTH_TEST)); }
    inline void disableDepthTest() const { GLCall(glDisable(GL_DEPTH_TEST)); }

    inline void enablePolygonMode_Point() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_POINT)); }
    inline void enablePolygonMode_Line() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_LINE)); }
    inline void enablePolygonMode_Fill() const { GLCall(glPolygonMode(GL_FRONT_AND_BACK, GL_FILL)); }

    inline void setCursorPosition(double x, double y) const { glfwSetCursorPos(_window, x, y); }
};

}

#endif
