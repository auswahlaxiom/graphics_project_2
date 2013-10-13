#version 420

/* --------------- INPUT VARIABLES -------------- */
/* In a fragment shader, attributes sent out with */
/* processed vertices in the vertex shader        */
/* and interpolated on the rasterization stage    */
/* ---------------------------------------------- */

flat in uint face_id;



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

  // just color the faces with different colors...

  switch(face_id)
  {
    case 0: fragcolor = vec3(1,0,0); break;
    case 1: fragcolor = vec3(0,1,0); break;
    case 2: fragcolor = vec3(0,0,1); break;
    case 3: fragcolor = vec3(1,1,0); break;
    case 4: fragcolor = vec3(1,1,1); break;
    case 5: fragcolor = vec3(1,0,1); break;
    default: fragcolor = vec3(.5,.5,.5); break;
  }
}
