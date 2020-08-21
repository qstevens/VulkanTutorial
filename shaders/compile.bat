@echo off
REM Run from root directory!
if not exist "..\build\shaders\" mkdir "..\build\shaders"

echo "Compiling shaders..."
echo "shader.vert -> ../build/shaders/shader.spv"
C:/VulkanSDK/1.2.148.1/Bin32/glslc.exe -fshader-stage=vert shader.vert -o ../build/shaders/vert.spv
echo "shaders/frag -> ../build/shaders/frag.spv"
C:/VulkanSDK/1.2.148.1/Bin32/glslc.exe -fshader-stage=frag shader.frag -o ../build/shaders/frag.spv

echo "Done."