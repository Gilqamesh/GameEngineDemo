#version 330 core

layout(location = 0) out vec4 color;

uniform vec4 u_diffuse;

void main()
{
    color = u_diffuse;
}
