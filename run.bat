@echo off
SET SCRIPTS_DIR=%~dp0

START /B %SCRIPTS_DIR%\proj.win32\Debug\test-player -workdir %SCRIPTS_DIR%\ -file %SCRIPTS_DIR%\scripts\main.lua -size 960x640
