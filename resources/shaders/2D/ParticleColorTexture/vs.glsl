#version 330 core

layout(location = 0) in vec2 billboard;
layout(location = 1) in vec2 inTexCoords;
layout(location = 2) in vec2 position;
layout(location = 3) in vec2 size;
layout(location = 4) in vec4 color;

out vec2 texCoords;
out vec2 fragmentPosition;
out vec2 o_origin;
out vec2 o_size;
out vec4 o_color;

uniform mat4 projection;

void main()
{
    fragmentPosition = vec4(position + billboard * size, 0.0f, 1.0f).xy;
    gl_Position = projection * vec4(fragmentPosition, 0.0f, 1.0f);
    texCoords = inTexCoords;
    o_color = color;
    o_origin = position;
    o_size = size;
}
