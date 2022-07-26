#version 330

layout(location = 0) out vec4 fragColor;

uniform vec4 u_color;

uniform vec2 origin;

in vec2 fragmentPosition;

uniform float radius;

void main()
{
    vec2 uv = fragmentPosition - origin;

    if (dot(uv, uv) > radius * radius)
        discard ;
    fragColor = vec4(1.0f, 0.0f, 0.0f, 1.0f);
}
