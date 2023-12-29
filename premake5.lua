project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("obj/" .. outputdir .. "/%{prj.name}")

	files {
		"include/**.h",
		"src/**.h",
		"src/**.cpp",
	}
	
	includedirs {
		"include/",
	}

	defines {
		"YAML_CPP_STATIC_DEFINE",
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
