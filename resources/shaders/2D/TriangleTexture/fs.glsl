#version 330 core

layout(location = 0) out vec4 color;

in vec2 texCoords;

uniform sampler2D u_diffuse;

void main()
{
    color = texture(u_diffuse, texCoords);
}
