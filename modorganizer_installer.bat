@echo off

::
:: modorganizer_installer.bat: A very simple batch script to create new instances of Mod Organizer with symlinks.

:: Copyright (C) 2017  Lucas Cota (BrasileiroGamer)
:: lucasbrunocota@live.com
:: <http://www.github.com/BrasileiroGamer/>

:: This program is free software: you can redistribute it and/or modify
:: it under the terms of the GNU General Public License as published by
:: the Free Software Foundation, either version 3 of the License, or
:: (at your option) any later version.

:: This program is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:: GNU General Public License for more details.

:: You should have received a copy of the GNU General Public License
:: along with this program.  If not, see <http://www.gnu.org/licenses/>.
::

:: modorganizer_installer.bat
:: Author: Lucas Cota (BrasileiroGamer)
:: Description: Creates a new instance of Mod Organizer.
:: Date: 2017-05-08

set install_path=%1
set current_path=%~dp0

if [%install_path%] == [] (
	echo Usage: modorganizer_installer.bat [install_path]
	goto end:
)

:instance_question
	cls
	set /p option=Creating a new instance will erase all the content of Mod Organizer folder, including your current installed mods. If this is the first time you are creating a new Mod Organizer instance, ignore this message. Do you wish to continue? [Y/N]?
	if "%option%" EQU "y" goto make_links:
	if "%option%" EQU "n" goto end:
	goto instance_question:
)
:: :instance_question

:make_links
	:: Directories
		cd %install_path%

		rmdir /s /q "Mod Organizer" 2>NUL

		mkdir "Mod Organizer"
		mkdir "Mod Organizer\DLLs"
		mkdir "Mod Organizer\DLLs\imageformats"
	:: Make Directories

	:: Junctions
		echo Creating new junctions...

		mklink /j "Mod Organizer\license" "%current_path%\license" >NUL
		mklink /j "Mod Organizer\logs" "%current_path%\logs" >NUL
		mklink /j "Mod Organizer\loot" "%current_path%\loot" >NUL
		mklink /j "Mod Organizer\NCC" "%current_path%\NCC" >NUL
		mklink /j "Mod Organizer\platforms" "%current_path%\platforms" >NUL
		mklink /j "Mod Organizer\plugins" "%current_path%\plugins" >NUL
		mklink /j "Mod Organizer\stylesheets" "%current_path%\stylesheets" >NUL
		mklink /j "Mod Organizer\translations" "%current_path%\translations" >NUL
		mklink /j "Mod Organizer\tutorials" "%current_path%\tutorials" >NUL
	:: Junctions

	:: HardLinks
		echo Creating new hardlinks...

		mklink /h "Mod Organizer\helper.exe" "%current_path%\helper.exe" >NUL
		mklink /h "Mod Organizer\hook.dll" "%current_path%\hook.dll" >NUL
		mklink /h "Mod Organizer\ModOrganizer.exe" "%current_path%\ModOrganizer.exe" >NUL
		mklink /h "Mod Organizer\msvcp120.dll" "%current_path%\msvcp120.dll" >NUL
		mklink /h "Mod Organizer\msvcr120.dll" "%current_path%\msvcr120.dll" >NUL
		mklink /h "Mod Organizer\nxmhandler.exe" "%current_path%\nxmhandler.exe" >NUL
		mklink /h "Mod Organizer\uibase.dll" "%current_path%\uibase.dll" >NUL

		mklink /h "Mod Organizer\DLLs\7z.dll" "%current_path%\DLLs\7z.dll" >NUL
		mklink /h "Mod Organizer\DLLs\archive.dll" "%current_path%\DLLs\archive.dll" >NUL
		mklink /h "Mod Organizer\DLLs\boost_python-vc120-mt-1_56.dll" "%current_path%\DLLs\boost_python-vc120-mt-1_56.dll" >NUL
		mklink /h "Mod Organizer\DLLs\dlls.manifest" "%current_path%\DLLs\dlls.manifest" >NUL
		mklink /h "Mod Organizer\DLLs\icudt53.dll" "%current_path%\DLLs\icudt53.dll" >NUL
		mklink /h "Mod Organizer\DLLs\icuin53.dll" "%current_path%\DLLs\icuin53.dll" >NUL
		mklink /h "Mod Organizer\DLLs\icuuc53.dll" "%current_path%\DLLs\icuuc53.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Core.dll" "%current_path%\DLLs\Qt5Core.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Declarative.dll" "%current_path%\DLLs\Qt5Declarative.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Gui.dll" "%current_path%\DLLs\Qt5Gui.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Multimedia.dll" "%current_path%\DLLs\Qt5Multimedia.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5MultimediaWidgets.dll" "%current_path%\DLLs\Qt5MultimediaWidgets.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Network.dll" "%current_path%\DLLs\Qt5Network.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5OpenGL.dll" "%current_path%\DLLs\Qt5OpenGL.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Positioning.dll" "%current_path%\DLLs\Qt5Positioning.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5PrintSupport.dll" "%current_path%\DLLs\Qt5PrintSupport.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Qml.dll" "%current_path%\DLLs\Qt5Qml.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Quick.dll" "%current_path%\DLLs\Qt5Quick.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Script.dll" "%current_path%\DLLs\Qt5Script.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Sensors.dll" "%current_path%\DLLs\Qt5Sensors.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Sql.dll" "%current_path%\DLLs\Qt5Sql.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Svg.dll" "%current_path%\DLLs\Qt5Svg.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5WebChannel.dll" "%current_path%\DLLs\Qt5WebChannel.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5WebKit.dll" "%current_path%\DLLs\Qt5WebKit.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5WebKitWidgets.dll" "%current_path%\DLLs\Qt5WebKitWidgets.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Widgets.dll" "%current_path%\DLLs\Qt5Widgets.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5WinExtras.dll" "%current_path%\DLLs\Qt5WinExtras.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5Xml.dll" "%current_path%\DLLs\Qt5Xml.dll" >NUL
		mklink /h "Mod Organizer\DLLs\Qt5XmlPatterns.dll" "%current_path%\DLLs\Qt5XmlPatterns.dll" >NUL

		mklink /h "Mod Organizer\DLLs\imageformats\qdds.dll" "%current_path%\DLLs\imageformats\qdds.dll" >NUL
		mklink /h "Mod Organizer\DLLs\imageformats\qgif.dll" "%current_path%\DLLs\imageformats\qgif.dll" >NUL
		mklink /h "Mod Organizer\DLLs\imageformats\qjpeg.dll" "%current_path%\DLLs\imageformats\qjpeg.dll" >NUL
		mklink /h "Mod Organizer\DLLs\imageformats\qtga.dll" "%current_path%\DLLs\imageformats\qtga.dll" >NUL
	:: HardLinks

	cd %current_path%
	echo The instance for %install_path% from "%current_path%" created successfully.
:: :make_links

:end
