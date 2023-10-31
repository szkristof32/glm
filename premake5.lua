project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"glm/**.cpp",
		"glm/**.hpp",
		"glm/**.inl"
	}
	
	includedirs
	{
		""
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
		
	filter "configurations:Dist"
		runtime "Release"
		optimize "on"