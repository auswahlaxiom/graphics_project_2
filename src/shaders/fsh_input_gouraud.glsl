#version 420

/* --------------- INPUT VARIABLES -------------- */
/* In a fragment shader, attributes sent out with */
/* processed vertices in the vertex shader        */
/* and interpolated on the rasterization stage    */
/* ---------------------------------------------- */

noperspective in float NdotL; // interpolated input from vertex processing
noperspective in float NdotH;


/* ------------- UNIFORM VARIABLES -------------- */
/* This is `global state' that every invocation   */
/* of the shader has access to.                   */
/* Note that these variables can also be declared */
/* in the fragment shader if necessary.           */
/* If the names are the same, the same value will */
/* be seen in both shaders.                       */
/* ---------------------------------------------- */


uniform float LightIntensity;
uniform float N_Spec;

uniform vec3 Ambient;
uniform vec3 K_Diff;
uniform vec3 K_Spec;


/* ----------- OUTPUT VARIABLES ----------------- */
/* For `simple' rendering we do here, there is    */ 
/* just one: RGB value for the fragment           */
/* ---------------------------------------------- */

out vec3 fragcolor;



/* ---------------------------------------------- */
/* ----------- MAIN FUNCTION -------------------- */
/* goal: compute the color of the fragment        */
/*  [put it into the only output variable]        */
/* ---------------------------------------------- */

void main()
{
  //Illumination total = I * ( kd*(N·L) + ks*(H·N)^n ) + kaIa

  fragcolor = vec3(LightIntensity * (NdotL * K_Diff + pow(NdotH, N_Spec) * K_Spec) + Ambient);
}

