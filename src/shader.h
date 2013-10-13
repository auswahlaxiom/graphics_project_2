
#include <OpenGL/gl.h>
#include <string>

#pragma once

namespace gl_CSCI441 {


/* ------------------------------------------- */

  typedef enum { TessCtr, Eval, Vert, Frag, Geom } ShaderType;

/* ------------------------------------------- */

  class Shader {

  private:
    GLuint handle;
    ShaderType tp;

  public:
    Shader ( const Shader &a );
    Shader ( const ShaderType t, const std::string source );
    ~Shader();
    Shader & operator= ( const Shader & rhs );
    ShaderType getType() const;
    GLuint getHandle() const;
    void printLog();
  };


/* ------------------------------------------- */

  std::string ReadFromFile ( const char *name );


/* ------------------------------------------- */
};

