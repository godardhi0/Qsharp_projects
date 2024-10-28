#!/bin/bash


echo "********Installing the necessary files********"
echo " "
echo " "
winget install Microsoft.Dotnet.SDK.6
echo " "
echo " "
echo "[1]--- .NET is installed"
echo " "
echo " "
dotnet new install Microsoft.Quantum.ProjectTemplates
echo " "
echo " "
echo "[2]--- ProjectTemplates installed"
echo " "
echo " "
echo "--->>>Now check if SDK6 is listed below <<<-----"
dotnet --list-sdks
echo " "
echo " "
winget install --id Microsoft.VisualStudioCode -e
echo " "
echo " "
echo "[3]--- vscode installed"
echo " "
echo " "
echo "Opening Vscode"

code



