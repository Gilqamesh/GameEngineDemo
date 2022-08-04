#version 330 core

layout(location = 0) out vec4 color;

in vec2 texCoords;

uniform sampler2D u_diffuse;
uniform vec4 u_color;

void main()
{
    color = u_color * texture(u_diffuse, texCoords);
}
