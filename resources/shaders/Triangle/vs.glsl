#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 a_texCoords;

out vec2 v_texCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
   gl_Position = vec4(position, 1.0f);
//    gl_Position = model * view * projection * vec4(position, 1.0f);
   v_texCoords = a_texCoords;
}
