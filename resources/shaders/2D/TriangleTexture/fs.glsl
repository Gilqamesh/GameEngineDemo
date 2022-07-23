#version 330 core

layout(location = 0) out vec4 color;

in vec2 texCoords;

uniform sampler2D texSlot;

void main()
{
    color = texture(texSlot, texCoords);
}
