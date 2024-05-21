# NEGL

This package contains bindings to EGL for the Nim programming language.
Some EGL extensions are supported (currently only for Android)

## Supported Platform

* Android

In the future, more platforms may receive support

## Contribute

I'm only one person and I use this library almost daily for personal projects.
If you need more extensions, or support for other platform, you can PR or open
an Issue with the specification.

## Usage
Import the *negl* module to use egl functions in your project

```nim
import negl

var display = eglGetDisplay(EGL_DEFAULT_DISPLAY)

# Create a context, draw with OpenGL
```

To use the extensions:

```nim
import negl
import negl/exts

```
