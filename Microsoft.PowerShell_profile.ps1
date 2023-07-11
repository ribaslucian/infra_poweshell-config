## Steps to configurate:
# 1. Install-Module PsReadLine -Force
# 2. Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
# 3. oh-my-posh font install
# 4. At terminal, "ctrl + shit + ," (terminal-settings.json) >>
# "profiles": {
#     "defaults": {
#         "font": {
#           "face": "MesloLGM Nerd Font"
#         }
#     }
#     ...
# 5. Get-PoshThemes

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Ctrl+r -Function ReverseSearchHistory
Set-PSReadLineKeyHandler -Key Ctrl+s -Function ForwardSearchHistory

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}
Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord


# oh-my-posh init pwsh | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\Users\lucian.ribas\AppData\Local\Programs\oh-my-posh\themes\zash.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\Users\lucian.ribas\AppData\Local\Programs\oh-my-posh\themes\uew.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\TIC\python\python_ia-tabular\.env\lrr-theme.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:\TIC\python\python_ia-tabular\.env\lrr-theme.yaml' | Invoke-Expression

# Alias
Set-Alias vim nvim
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig "C:\TIC\.sources\Git\usr\bin\tig.exe"
Set-Alias tail "C:\TIC\.sources\Git\usr\bin\less.exe"



function Connect-Telnet {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ComputerName,
        [Parameter(Mandatory=$true)]
        [int]$Port
    )

    $command = "telnet $ComputerName $Port"
    Invoke-Expression $command
}


function tc {
    param(
        [string]$Hostname,
        [int]$Port
    )

    Test-NetConnection $Hostname -Port $Port
}