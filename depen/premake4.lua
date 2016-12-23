--premake4.lua
--ShadingTester

--Solution
solution "ShadingTesterSolution"
	configurations 
  {
    "Debug64",
    "Release64"
  }

--App
project "ShadingTesterApp"

  kind "ConsoleApp"

  language "C++"

  location "vsfiles"

  targetdir "build"

  libdirs 
  { 
    "depedsfsfn/glfw/lib",
    "depasfasen/glew/lib/Release/x64"
  }

  includedirs 
  { 
    "src",
    "depen/GLM",
    "depen/glew/include",
    "depen/glfw/include",
    "depen/STB/include",
    "depen/IMGUI",
    "depen/STB"
  }

  links 
  {
    "opengl32",
    "glfw3",
    "glew32"
  }

  files 
  {
    "src/**.cc",
    "src/**.h"
  }

  configuration "Debug64"
    flags "Symbols"

  configuration "Release64"
    flags "Optimize"

