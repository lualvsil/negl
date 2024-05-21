when defined(android):
  type
    EGLNativeDisplayType* = pointer
    EGLNativePixmapType* = pointer
    EGLNativeWindowType* = pointer
else:
  type
    EGLNativeDisplayType* = pointer
    EGLNativePixmapType* = pointer
    EGLNativeWindowType* = pointer

type
  EGLint* = int
  EGLBoolean* = bool
  EGLenum* = uint
  EGLAttrib* = ptr int
  EGLClientBuffer* = pointer
  EGLConfig* = pointer
  EGLContext* = pointer
  EGLDeviceEXT* = pointer
  EGLDisplay* = pointer
  EGLImage* = pointer
  EGLSurface* = pointer
  EGLSync* = pointer
  EGLTime* = int64
  EGLImageKHR* = pointer
  EGLLabelKHR* = pointer
  EGLObjectKHR* = pointer
  EGLOutputLayerEXT* = pointer
  EGLOutputPortEXT* = pointer
  EGLStreamKHR* = pointer
  EGLSyncKHR* = pointer
  EGLSyncNV* = pointer
  EGLAttribKHR* = ptr int
  EGLTimeKHR* = int64
  EGLnsecsANDROID* = int64
  EGLuint64KHR* = int64
