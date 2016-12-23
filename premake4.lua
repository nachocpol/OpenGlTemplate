--premake4.lua
--

--Solution
solution "SolutionName"
	configurations 
  {
    "Debug86",
    "Release86"
  }

--App
project "ProjectName"

  kind "ConsoleApp"

  language "C++"

  location "vsfiles"

  targetdir "build"

  libdirs 
  { 
    "depen/glfw/lib",
    "depen/glew/lib/Release/Win32"
  }

  includedirs 
  { 
    "src",
    "depen/glm",
    "depen/glew/include",
    "depen/glfw/include",
    "depen/STB/include",
    "depen/imgui",
    "depen/stb"
  }

  links 
  {
    "opengl32",
    "glfw3",
    "glew32s"
  }

  files 
  {
    "src/**.cc",
    "src/**.h",
    "depen/imgui/**.cpp"
  }

  configuration "Debug86"
    flags "Symbols"
    platforms "x32"

  configuration "Release86"
    flags "Optimize"
    platforms "x32"

