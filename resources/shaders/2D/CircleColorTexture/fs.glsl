// #version 330 core

// layout(location = 0) out vec4 color;

// uniform vec4 u_color;
// uniform vec2 resolution;

// float circle(in vec2 _st, in float _radius){
//     vec2 dist = _st-vec2(0.5);
// 	return 1.-smoothstep(_radius-(_radius*0.01),
//                          _radius+(_radius*0.01),
//                          dot(dist,dist)*4.0);
// }

// void main()
// {
//     vec2 uv = gl_FragCoord.xy / resolution;
//     vec3 _color = vec3(circle(uv, 0.9f));
//     color = vec4(_color, 1.0f);
// }

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
