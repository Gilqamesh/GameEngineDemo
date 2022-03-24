#ifndef WINDOW_HPP
# define WINDOW_HPP

# include "pch.hpp"

namespace NAMESPACE
{

class Window
{
int width;
int height;
std::string name;
GLFWwindow *window;
public:
    inline int getWidth() const { return (width); }
    inline int getHeigh() const { return (height); }
    inline const std::string &getName() const { return (name); }
    inline GLFWwindow *getWindow() const { return (window); }
};

}

#endif
