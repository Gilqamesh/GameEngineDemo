#version 330 core

layout(location = 0) in vec2 billboard;
layout(location = 1) in vec2 position;
layout(location = 2) in vec2 size;
layout(location = 3) in vec4 color;

uniform mat4 projection;

out vec4 o_color;

void main()
{
    gl_Position = projection * vec4(position + billboard * size, 0.0f, 1.0f);
    o_color = color;
}
