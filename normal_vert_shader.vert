#version 120

//const float fresnelRefl = 0.87;
//const float fresnelPow = 3.33;

// sabit degiskenler
uniform mat4 MVP;
//uniform mat3 view;
//uniform vec3 color1 = vec3(0.0,1.0,1.0);
//uniform vec3 color2 = vec3(1.0,1.0,1.0);

// diziden alinacak degiskenler
attribute vec4 Position; 
attribute vec3 Normal;  

// fragment shader'a aktarilacak veriler
varying vec3 normal;
//varying vec3 myMix;
varying float CosX;


// vertex shader main metodu
void main()
{	
    // gl_Position ekranda noktanin nerede olacagini belirtir.
    gl_Position = MVP * Position;
	normal = mat3(gl_ModelViewMatrix) * Normal;
	CosX = normalize(normal).z * (-1);
	
	
	//float fresnel = fresnelRefl + (1-fresnelRefl)*pow(1+CosX, fresnelPow);

	//myMix = mix(vec3(0.0,1.0,1.0),vec3(1.0,1.0,1.0),(CosX)); 
	
	//myMix = mix(color1,color2, ((view*Normal)*vec3(Position)).z);
	//myMix = color1;
	//myMix = color2;
	//myMix = color1+color2;
}


