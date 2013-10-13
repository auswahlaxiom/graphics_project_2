#version 420

/* --------------- INPUT VARIABLES -------------- */
/* In a fragment shader, attributes sent out with */
/* processed vertices in the vertex shader        */
/* and interpolated on the rasterization stage    */
/* ---------------------------------------------- */

in vec2 param;





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

  // scale from 0...1 to 0...512 so that the formula from the 
  // ray tracer can be used...

  float x = 512.0*param.x;
  float y = 512.0*param.y;

  // .. and use the formula [cf ray tracer sample code]

  fragcolor = vec3(
                   0.5+0.5*sin(sin(x/30.0)+y*y/700.0),
                   0.5+0.5*sin(y/71.0),
                   0.5+0.5*sin(x*x*x/120000.0+y*y/1700.0)
                  );
}
