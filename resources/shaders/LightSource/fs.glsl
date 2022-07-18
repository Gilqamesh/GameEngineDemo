#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_texCoords;

uniform sampler2D u_ambient;
uniform sampler2D u_diffuse;
uniform sampler2D u_specular;
uniform sampler2D u_emission;

void main()
{
    color = texture(u_diffuse, v_texCoords);
}
