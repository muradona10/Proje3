#version 120

const float R0 = 0.01;
const float R1 = 2.33;

// vertex shaderindan gelen veriler
varying vec3 normal;
//varying vec3 myMix;
varying float CosX;

// fragment shader main metodu
void main(void)
{
    // gl_FragColor ekrana basilacak rengi secer
    // gl_FragColor = vec4(normalize(normal),1.0);
	
	float fresnel = R0 + (1-R0)*pow(1+cos(CosX), R1);
	//vec3 result = normalize(mix((vec3(0.0,1.0,0.0)) , (vec3(0.0,0.0,1.0)) ,fresnel));
	vec3 result = normalize(mix((vec3(0.0,1.0,0.0)) , (vec3(0.0,0.0,1.0)) , cos(CosX)));

	gl_FragColor = vec4(result,1.0);
	//gl_FragColor = vec4(myMix,1.0);
	
}
