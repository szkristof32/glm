project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	
	targetdir ("%{wks.location}/bin")
	objdir ("%{wks.location}/bin-int")
	
	files
	{
		"glm/**.cpp",
		"glm/**.hpp",
		"glm/**.inl"
	}