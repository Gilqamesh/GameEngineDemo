#version 330 core

layout(location = 0) out vec4 color;

in vec4 o_color;

void main()
{
    color = o_color;
    if (color.a < 0.1) discard ; // discard texels below a certain alpha treshhold as openGl doesn't know what to do with alpha values
}
