import std/strformat
import negl

var display = eglGetDisplay(EGL_DEFAULT_DISPLAY)

var
  major: EGLint
  minor: EGLint

discard eglInitialize(display, major.addr, minor.addr)

echo &" EGL Version: {major}.{minor}"

var exts = eglQueryString(display, EGL_EXTENSIONS)
# Show formated extensions
for i, c in exts:
  if c == ' ':
    exts[i] = '\n'
echo exts

var config: EGLConfig
var configSize: EGLint
var configAttribs = @[
  EGL_RED_SIZE, 8,
  EGL_GREEN_SIZE, 8,
  EGL_BLUE_SIZE, 8,
  EGL_ALPHA_SIZE, 8,
  EGL_COLOR_BUFFER_TYPE, EGL_RGB_BUFFER,
  EGL_SURFACE_TYPE, EGL_PBUFFER_BIT,
  EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
  EGL_NONE
]
echo eglChooseConfig(display, addr configAttribs[0], addr config, 1, addr configSize)
echo configSize