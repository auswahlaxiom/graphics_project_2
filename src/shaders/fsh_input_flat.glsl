#version 420

/* --------------- INPUT VARIABLES -------------- */
/* In a fragment shader, attributes sent out with */
/* processed vertices in the vertex shader        */
/* and interpolated on the rasterization stage    */
/* ---------------------------------------------- */

flat in float NdotL; // interpolated input from vertex processing



/* ------------- UNIFORM VARIABLES -------------- */
/* This is `global state' that every invocation   */
/* of the shader has access to.                   */
/* Note that these variables can also be declared */
/* in the fragment shader if necessary.           */
/* If the names are the same, the same value will */
/* be seen in both shaders.                       */
/* ---------------------------------------------- */


uniform float LightIntensity;
uniform float AmbientIntensity;
uniform vec3 DiffuseAndAmbientCoefficient;


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

  fragcolor = vec3((LightIntensity * (NdotL > 0.0f ? NdotL : 0.0f) + AmbientIntensity) * DiffuseAndAmbientCoefficient);
}
