Steps to configurate:


$ Install-Module PsReadLine -Force


$ Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))


$ oh-my-posh font install


- At terminal, "ctrl + shit + ," (terminal-settings.json) >>
C:\Users\lucia\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
"profiles": {
    "defaults": {
        "font": {
        "face": "MesloLGM Nerd Font"
        }
    }
    ...

- Install NerdFontsSymbolsOnly
$ oh-my-posh font install


- Ajustar arquivo profile do powershell para carregar as configurações do arquivo personalizado:
C:\Users\lucia\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
>>
. "C:\TIC\env\my-env-configs\powershell-profile.ps1"



- Get-PoshThemes

