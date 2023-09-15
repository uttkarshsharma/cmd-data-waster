@echo off
title Uttz Data Waster
cls

echo Welcome to the data waster!

echo.

echo Generating random file name...
:rand
set FILENAME=deleteme-%RANDOM%
if exist %FILENAME% goto rand

echo.

:gen
echo Downloading Large File...
curl -L -o %FILENAME% https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-desktop-amd64.iso
echo Deleting Large File...
del /f %FILENAME%
echo.
goto gen