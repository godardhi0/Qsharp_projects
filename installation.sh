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
winget install --id Microsoft.VisualStudioCode -e --location "C:\Vscode"
echo " "
echo " "
echo "[3]--- vscode installed at C:\Vscode"
echo " "
echo " "
$env:PATH += ";C:\VSCode"
echo " "
echo " "
code --install-extension quantum.quantum-devkit-vscode
echo " "
echo " "
echo "[4]--- QDK installed"
echo " "
echo " "
code --install-extension ms-vscode.cpptools
echo " "
echo " "
echo "[5]--- C/C++ tools installed"
echo " "
echo " "
code --install-extension ms-dotnettools.csharp
echo " "
echo " "
echo "[6]--- c# tools installed"
echo " "
echo " "
echo "Opening Vscode"
code



