module Four.Render where

import Math.Vector3 exposing (Vec3, vec3)
import Math.Vector4 exposing (Vec4, vec4, sub, normalize)
import Math.Matrix4 exposing (..)
import WebGL exposing (..)

import Four.Math exposing (..)

makeFourTransform : Vec4 -> Vec4 -> Vec4 -> Vec4 -> Mat4
makeFourTransform from to up over =
  let wd = normalize (to `sub` from)
      wa = normalize (cross4 up over wd)
      wb = normalize (cross4 over wd wa)
      wc = cross4 wd wa wb
  in concatColumns wa wb wc wd

vertexShader : Shader { attr | position:Vec4, color:Vec3 }
                      { unif | fourFrom:Vec4, fourTangent: Float, fourTransform:Mat4, rotation:Mat4, perspective:Mat4, camera:Mat4 }
                      { vcolor:Vec3 }
vertexShader = [glsl|
attribute vec4 position;
attribute vec3 color;
uniform vec4 fourFrom;
uniform float fourTangent;
uniform mat4 fourTransform;
uniform mat4 perspective;
uniform mat4 camera;
uniform mat4 rotation;
varying vec3 vcolor;
void main () {
    vec4 projected = (position - fourFrom) * fourTransform;
    vec3 transformed = projected.xyz / (projected.w * fourTangent);
    gl_Position = perspective * camera * rotation * vec4(transformed, 1.0);
    vcolor = color;
}
|]


fragmentShader : Shader {} { u | shade:Float } { vcolor:Vec3 }
fragmentShader = [glsl|
precision mediump float;
uniform float shade;
varying vec3 vcolor;
void main () {
    gl_FragColor = shade * vec4(vcolor, 1.0);
}
|]
