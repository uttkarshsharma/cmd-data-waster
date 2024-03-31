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
curl -L -o %FILENAME% https://dl.google.com/dl/android/aosp/husky-ud1a.230803.022.a3-factory-a95417f6.zip
echo Deleting Large File...
del /f %FILENAME%
echo.
goto gen
