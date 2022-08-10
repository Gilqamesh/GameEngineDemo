#version 330

layout(location = 0) out vec4 fragColor;

uniform vec4 u_color;

uniform vec2 viewPort;
uniform vec2 origin;

void main()
{
    vec2 uv = gl_FragCoord.xy / viewPort;

    if (dot(uv, uv) < 1.0f)
    {
        fragColor = vec4(1.0f, 0.0f, 0.0f, 1.0f);
    }
    else
    {
        fragColor = vec4(0.0f, 0.0f, 1.0f, 1.0f);
    }
}
