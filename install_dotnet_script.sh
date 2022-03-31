#!/bin/bash
set -e

# Windows PowerShell
#Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile "$env:temp/dotnet-install.ps1"; powershell -executionpolicy bypass "$env:temp/dotnet-install.ps1"

# PowerShell Core
#Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile "$env:temp/dotnet-install.ps1"; pwsh "$env:temp/dotnet-install.ps1"

# Shell
#wget https://dot.net/v1/dotnet-install.sh && chmod +x ./dotnet-install.sh && sudo ./dotnet-install.sh

export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$PATH:$DOTNET_ROOT"
export PATH="$PATH:$DOTNET_ROOT/tools"

[ -f $DOTNET_ROOT/tools/dotnet-script ] && dotnet tool uninstall dotnet-script -g
dotnet tool install dotnet-script -g

cat << \EOF >> ~/.basrc
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT
# Add .NET Core SDK tools
export PATH="$PATH:$DOTNET_ROOT/tools"
EOF