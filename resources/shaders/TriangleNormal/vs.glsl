#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 a_texCoords;

out vec2 v_texCoords;
out vec3 v_normalVec;
out vec3 fragmentPosition;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 normalMatrix;

void main()
{
   gl_Position = projection * view * model * vec4(position, 1.0f);
   v_texCoords = a_texCoords;
   v_normalVec = mat3(normalMatrix) * normal;
   fragmentPosition = vec3(model * vec4(position, 1.0f));
}
