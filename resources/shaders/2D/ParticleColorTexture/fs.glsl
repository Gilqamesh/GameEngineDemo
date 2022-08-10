#version 330 core

layout(location = 0) out vec4 color;

in vec2 texCoords;
in vec2 fragmentPosition;
in vec2 o_origin;
in vec2 o_size;
in vec4 o_color;

uniform sampler2D u_diffuse;

void main()
{
    vec2 uv = fragmentPosition - o_origin;
    if (4 * uv.x * uv.x / (o_size.x * o_size.x) +
        4 * uv.y * uv.y / (o_size.y * o_size.y) > 1)
        discard; // Ellipse equation: x^2 / a^2 + y^2 / b^2 = 1

    color = o_color * texture(u_diffuse, texCoords);
    if (color.a < 0.001) discard ; // discard texels below a certain alpha treshhold as openGl doesn't know what to do with alpha values
}
