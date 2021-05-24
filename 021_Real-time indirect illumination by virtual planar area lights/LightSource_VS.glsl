#version 430 core

layout (location = 0) in vec3 _Position;
layout (location = 1) in vec2 _TexCoords;

layout (std140, binding = 0) uniform u_Matrices4ProjectionWorld
{
	mat4 u_ProjectionMatrix;
	mat4 u_ViewMatrix;
};

uniform mat4 u_ModelMatrix = mat4(1);

out vec2 v2f_TexCoords;

void main()
{
	v2f_TexCoords = _TexCoords;
	gl_Position = u_ProjectionMatrix * u_ViewMatrix  * vec4(_Position, 1.0);
}