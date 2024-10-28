#!/bin/bash


echo "Installing the necessary files"

winget install Microsoft.Dotnet.SDK.6

echo "[1]--- .NET is installed"

dotnet new install Microsoft.Quantum.ProjectTemplates

echo "[2]--- ProjectTemplates installed"


echo "Now check if SDK6 is installed"
dotnet --list-sdks


