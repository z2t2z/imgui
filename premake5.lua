project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs {
        "../GLFW/include",
        ".",
        "backends"
    }

	files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
	}

	filter "system:windows"
		systemversion "latest"
        cppdialect "C++20"
		staticruntime "On" --staticly linking the runtime libraries

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MI"

