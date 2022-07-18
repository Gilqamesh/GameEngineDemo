#version 330 core
#define MAX_LIGHT_SOURCES 4 // for now, later on dynamically generating the shader can solve this

layout(location = 0) out vec4 color;

in vec2 v_texCoords;
in vec3 v_normalVec;
in vec3 fragmentPosition;

/* Material textures + shininess */
uniform sampler2D u_ambient;
uniform sampler2D u_diffuse;
uniform sampler2D u_specular;
uniform sampler2D u_emission;
uniform float shininess;

uniform vec3 viewPos;
uniform float u_alpha;

struct PointLight
{
    vec4 color;
    float ambientStrength;
    float diffuseStrength;
    float specularStrength;
    vec3 position;
    float attenuation_constant;
    float attenuation_linear;
    float attenuation_quadratic;
};

struct DirectionalLight
{
    vec4 color;
    float ambientStrength;
    float diffuseStrength;
    float specularStrength;
    float direction;
};

struct SpotLight
{
    vec4 color;
    float ambientStrength;
    float diffuseStrength;
    float specularStrength;
    vec3 position;
    vec3 direction;
    float innerCutOffAngle;
    float outerCutOffAngle;
    float attenuation_constant;
    float attenuation_linear;
    float attenuation_quadratic;
};

uniform PointLight point_light[MAX_LIGHT_SOURCES];
uniform DirectionalLight directional_light[MAX_LIGHT_SOURCES];
uniform SpotLight spot_light[MAX_LIGHT_SOURCES];

vec4 calculatePointLightColor(int index);
vec4 calculateDirectionalLightColor(int index);
vec4 calculateSpotLightColor(int index);

uniform int n_of_point_lights;
uniform int n_of_directional_lights;
uniform int n_of_spot_lights;

void main()
{
    vec4 _color = texture(u_diffuse, v_texCoords);
    if (_color.a < 0.1) discard ; // discard texels below a certain alpha treshhold <- forgot to write here why?..
    vec4 sumColor = vec4(0.0f, 0.0f, 0.0f, 0.0f);

    for (int i = 0; i < n_of_point_lights; ++i) sumColor += calculatePointLightColor(i);
    for (int i = 0; i < n_of_directional_lights; ++i) sumColor += calculateDirectionalLightColor(i);
    for (int i = 0; i < n_of_spot_lights; ++i) sumColor += calculateSpotLightColor(i);

    color = vec4(sumColor.rgb, 1.0f) * u_alpha;
}

vec4 calculatePointLightColor(int index)
{
    // Ambient
	vec4 ambient = point_light[index].ambientStrength * point_light[index].color * texture(u_ambient, v_texCoords);

	// Diffuse
	vec3	norm				= normalize(v_normalVec);
	vec3	lightDir			= normalize(point_light[index].position - fragmentPosition);
	float	diffuseFactor		= max(dot(norm, lightDir), 0.0f);
	vec4	diffuse = point_light[index].diffuseStrength * point_light[index].color * diffuseFactor * texture(u_diffuse, v_texCoords);

	// Specular
	vec3	viewDir				= normalize(viewPos - fragmentPosition);
	vec3	reflectDir			= reflect(-lightDir, norm);
	float	shininessFactor		= pow(max(dot(viewDir, reflectDir), 0.0f), shininess);
	vec4	specular = point_light[index].specularStrength * point_light[index].color * shininessFactor * texture(u_specular, v_texCoords);

	// Emission
	vec4	emission = texture(u_emission, v_texCoords);

	// Attenuation factor
	float	dist			    = length(point_light[index].position - fragmentPosition);
	float	attenuation_factor	= 1.0f / (point_light[index].attenuation_constant + point_light[index].attenuation_linear * dist + point_light[index].attenuation_quadratic * dist * dist);

    ambient *= attenuation_factor;
    diffuse *= attenuation_factor;
    specular *= attenuation_factor;
	return (ambient + diffuse + specular + emission);
}

vec4 calculateDirectionalLightColor(int index)
{
    return (vec4(1.0f, 1.0f, 1.0f, 1.0f));
}

vec4 calculateSpotLightColor(int index)
{
    return (vec4(1.0f, 1.0f, 1.0f, 1.0f));
}
