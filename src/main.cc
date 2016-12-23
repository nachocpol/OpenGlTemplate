/*
    main.cc nachocpol@gmail.com
*/
#define GLEW_STATIC
#include "GL/glew.h"

#include "GLFW/glfw3.h"

#include "imgui.h"
#include "imgui_impl_glfw_gl3.h"

#include "glm/glm.hpp"

int main()  
{
    GLFWwindow* window;
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    window = glfwCreateWindow(1024, 720, "Shading Tester", nullptr, nullptr);
    glfwMakeContextCurrent(window);

    glewInit();
    glewExperimental = GL_TRUE;

    ImGui_ImplGlfwGL3_Init(window, true);


    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();
        ImGui_ImplGlfwGL3_NewFrame();

        ImGui::ShowTestWindow();

        glViewport(0, 0, 1024, 720);
        glClearColor(0.1f,0.3f,0.5f,1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        ImGui::Render();
        glfwSwapBuffers(window);
    }

    ImGui_ImplGlfwGL3_Shutdown();
    glfwTerminate();

    return 0;
}