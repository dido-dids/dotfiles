# Dotfiles
My dotfiles inspired from https://github.com/fallion/dotfiles

## prerequisites

### macOS

GET Xcode Command Line Tools xcode-select --install

### windowsOS

GET Windows Subsystem for Linux https://docs.microsoft.com/en-us/windows/wsl/install-win10

## installation

git

git clone git@github.com:malyborky/dotfiles.git ~/dotfiles
cd ~/dotfiles
sh setup.sh


### Remote

#### curl

`curl -fsSL https://raw.github.com/malyborky/dotfiles/master/remote-setup.sh | bash`


#### wget

`wget -O - --no-check-certificate https://raw.githubusercontent.com/malyborky/dotfiles/master/remote-setup.sh | bash`

# Windows install

For apps
`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/malyborky/dotfiles/master/windows/install.ps1'))`

For system settings
`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/malyborky/dotfiles/master/windows/windows.ps1'))`