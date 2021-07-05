#version 330 core
out vec4 FragColor;

in vec3 Normal;  
in vec3 FragPos; 
in vec2 TexCoords;

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    sampler2D emission;
    float shininess;
}; 

uniform Material material;

struct Light {
    vec3 position;// 使用定向光就不需要了
    vec3 direction; // 平行光
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;

    float constant;
    float linear;
    float quadratic;
    float cutOff; //聚光
    float outerCutOff; //外切光

};

uniform Light light;
  
uniform vec3 lightPos; 
uniform vec3 lightColor;
uniform vec3 objectColor;
uniform vec3 viewPos;

void main()
{

    vec3 lightDir = normalize(light.position - FragPos);
    float theta = dot(lightDir, normalize(-light.direction));
    float epsilon   = light.cutOff - light.outerCutOff;
    float intensity = clamp((theta - light.outerCutOff) / epsilon, 0.0, 1.0);
    vec3 ambient = light.ambient * vec3(texture(material.diffuse, TexCoords));

    float distance    = length(light.position - FragPos);
    float attenuation = 1.0 / (light.constant + light.linear * distance + 
                light.quadratic * (distance * distance));
    
    // diffuse 
    vec3 norm = normalize(Normal);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = light.diffuse * diff * vec3(texture(material.diffuse, TexCoords));
    vec3 viewDir = normalize(viewPos - FragPos);
    vec3 reflectDir = reflect(-lightDir, norm);
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
    // vec3 specular = light.specular * spec * (vec3(1.0) - vec3(texture(material.specular, TexCoords))); 
    vec3 specular = light.specular * spec * vec3(texture(material.specular, TexCoords));
    vec3 emission = vec3(texture(material.emission, TexCoords));
    diffuse  *= intensity;
    specular *= intensity;
  
    ambient  *= attenuation; 
    diffuse  *= attenuation;
    specular *= attenuation;
  
  
    vec3 result = (ambient + diffuse + specular + emission);
    FragColor = vec4(result, 1.0);
} 