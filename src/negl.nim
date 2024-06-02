when defined(android):
  {.passL: "-lEGL".}
  {.pragma: eglImport, discardable, cdecl, importc.}
else:
  {.error: "[EGL] Unsupported platform".}

import negl/[types, constants]
export types
export constants

#[when compiles(EGLNativeDisplayType(nil)):
  const EGL_DEFAULT_DISPLAY* = EGLNativeDisplayType(nil)
else:
  const EGL_DEFAULT_DISPLAY* = EGLNativeDisplayType(0)
]#
const
  EGL_VERSION_1_0* = 1
  EGL_VERSION_1_1* = 1
  EGL_VERSION_1_2* = 1
  EGL_VERSION_1_3* = 1
  EGL_VERSION_1_4* = 1
  EGL_VERSION_1_5* = 1

proc eglChooseConfig*(dpy: EGLDisplay, attrib_list: ptr EGLint, configs: ptr EGLConfig, config_size: EGLint, num_config: ptr EGLint): EGLBoolean {.eglImport.}
proc eglCopyBuffers*(dpy: EGLDisplay, surface: EGLSurface, target: EGLNativePixmapType): EGLBoolean {.eglImport.}
proc eglCreateContext*(dpy: EGLDisplay, config: EGLConfig, share_context: EGLContext, attrib_list: ptr EGLint): EGLContext {.eglImport.}
proc eglCreatePbufferSurface*(dpy: EGLDisplay, config: EGLConfig, attrib_list: ptr EGLint): EGLSurface {.eglImport.}
proc eglCreatePixmapSurface*(dpy: EGLDisplay, config: EGLConfig, pixmap: EGLNativePixmapType, attrib_list: ptr EGLint): EGLSurface {.eglImport.}
proc eglCreateWindowSurface*(dpy: EGLDisplay, config: EGLConfig, win: EGLNativeWindowType, attrib_list: ptr EGLint): EGLSurface {.eglImport.}
proc eglDestroyContext*(dpy: EGLDisplay, ctx: EGLContext): EGLBoolean {.eglImport.}
proc eglDestroySurface*(dpy: EGLDisplay, surface: EGLSurface): EGLBoolean {.eglImport.}
proc eglGetConfigAttrib*(dpy: EGLDisplay, config: EGLConfig, attribute: EGLint, value: ptr EGLint): EGLBoolean {.eglImport.}
proc eglGetConfigs*(dpy: EGLDisplay, configs: ptr EGLConfig, config_size: EGLint, num_config: ptr EGLint): EGLBoolean {.eglImport.}
proc eglGetCurrentDisplay*(): EGLDisplay {.eglImport.}
proc eglGetCurrentSurface*(readdraw: EGLint): EGLSurface {.eglImport.}
proc eglGetDisplay*(display_id: EGLNativeDisplayType): EGLDisplay {.eglImport.}
proc eglGetError*(): EGLint {.eglImport.}
proc eglGetProcAddress*(procname: cstring): pointer {.eglImport.}
proc eglInitialize*(dpy: EGLDisplay, major: ptr EGLint, minor: ptr EGLint): EGLBoolean {.eglImport.}
proc eglMakeCurrent*(dpy: EGLDisplay, draw: EGLSurface, read: EGLSurface, ctx: EGLContext): EGLBoolean {.eglImport.}
proc eglQueryContext*(dpy: EGLDisplay, ctx: EGLContext, attribute: EGLint, value: ptr EGLint): EGLBoolean {.eglImport.}
proc eglQueryString*(dpy: EGLDisplay, name: EGLint): cstring {.eglImport.}
proc eglQuerySurface*(dpy: EGLDisplay, surface: EGLSurface, attribute: EGLint, value: ptr EGLint): EGLBoolean {.eglImport.}
proc eglSwapBuffers*(dpy: EGLDisplay, surface: EGLSurface): EGLBoolean {.eglImport.}
proc eglTerminate*(dpy: EGLDisplay): EGLBoolean {.eglImport.}
proc eglWaitGL*(): EGLBoolean {.eglImport.}
proc eglWaitNative*(engine: EGLint): EGLBoolean {.eglImport.}
proc eglBindTexImage*(dpy: EGLDisplay, surface: EGLSurface, buffer: EGLint): EGLBoolean {.eglImport.}
proc eglReleaseTexImage*(dpy: EGLDisplay, surface: EGLSurface, buffer: EGLint): EGLBoolean {.eglImport.}
proc eglSurfaceAttrib*(dpy: EGLDisplay, surface: EGLSurface, attribute: EGLint, value: EGLint): EGLBoolean {.eglImport.}
proc eglSwapInterval*(dpy: EGLDisplay, interval: EGLint): EGLBoolean {.eglImport.}
proc eglBindAPI*(api: EGLenum): EGLBoolean {.eglImport.}
proc eglQueryAPI*(): EGLenum {.eglImport.}
proc eglCreatePbufferFromClientBuffer*(dpy: EGLDisplay, buftype: EGLenum, buffer: EGLClientBuffer, config: EGLConfig, attrib_list: ptr EGLint): EGLSurface {.eglImport.}
proc eglReleaseThread*(): EGLBoolean {.eglImport.}
proc eglWaitClient*(): EGLBoolean {.eglImport.}
proc eglGetCurrentContext*(): EGLContext {.eglImport.}
proc eglCreateSync*(dpy: EGLDisplay, typen: EGLenum, attrib_list: ptr EGLAttrib): EGLSync {.eglImport.}
proc eglDestroySync*(dpy: EGLDisplay, sync: EGLSync): EGLBoolean {.eglImport.}
proc eglClientWaitSync*(dpy: EGLDisplay, sync: EGLSync, flags: EGLint, timeout: EGLTime): EGLint {.eglImport.}
proc eglGetSyncAttrib*(dpy: EGLDisplay, sync: EGLSync, attribute: EGLint, value: ptr EGLAttrib): EGLBoolean {.eglImport.}
proc eglCreateImage*(dpy: EGLDisplay, ctx: EGLContext, target: EGLenum, buffer: EGLClientBuffer, attrib_list: ptr EGLAttrib): EGLImage {.eglImport.}
proc eglDestroyImage*(dpy: EGLDisplay, image: EGLImage): EGLBoolean {.eglImport.}
proc eglGetPlatformDisplay*(platform: EGLenum, native_display: pointer, attrib_list: ptr EGLAttrib): EGLDisplay {.eglImport.}
proc eglCreatePlatformWindowSurface*(dpy: EGLDisplay, config: EGLConfig, native_window: pointer, attrib_list: ptr EGLAttrib): EGLSurface {.eglImport.}
proc eglCreatePlatformPixmapSurface*(dpy: EGLDisplay, config: EGLConfig, native_pixmap: pointer, attrib_list: ptr EGLAttrib): EGLSurface {.eglImport.}
proc eglWaitSync*(dpy: EGLDisplay, sync: EGLSync, flags: EGLint): EGLBoolean {.eglImport.}