#!/bin/bash
set -e

# Windows PowerShell
#Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile "$env:temp/dotnet-install.ps1"; powershell -executionpolicy bypass "$env:temp/dotnet-install.ps1"

# PowerShell Core
#Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile "$env:temp/dotnet-install.ps1"; pwsh "$env:temp/dotnet-install.ps1"

# Shell
#wget https://dot.net/v1/dotnet-install.sh && chmod +x ./dotnet-install.sh && sudo ./dotnet-install.sh

export PATH=$PATH:$HOME/.dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT

[ -f $DOTNET_ROOT/tools/dotnet-script ] && dotnet tool uninstall dotnet-script -g || echo ERROR
dotnet tool install dotnet-script -g

export PATH="$PATH:$DOTNET_ROOT/tools"

cat << \EOF > ~/.bash_profile
export PATH=$PATH:$HOME/.dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT
EOF

cat << \EOF >> ~/.bash_profile
# Add .NET Core SDK tools
export PATH="$PATH:$DOTNET_ROOT/tools"
EOF

source ~/.bash_profile
