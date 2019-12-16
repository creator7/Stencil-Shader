# Stencil-Shader
Use stencil wall to see objects

## Steps to attain effect

1. Import these two shaders to your project
2. Create a 3d quad
3. Create a new material and set Stencil Window shader to it (Custom/Stencil Window)
4. Set Stencil Comp property value to "Always" and Stencil Op to "Replace" and ref value to 1
5. Assign this material to created quad
6. Create a 3d cube or import any textured 3d model
7. Create a material and set Diffuse Stencil shader to it (Custom/Diffuse Stencil)
8. Set Stencil Comp value to "Equal" and Stencil Op value to "Keep". Set Ref value to 1 (this value must be same to the value you set in stencil window shader)
9. Assign this material to cube
10. Now you can see your cube only through this quad
