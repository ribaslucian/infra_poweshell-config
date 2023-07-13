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


function tc {
    param(
        [string]$Hostname,
        [int]$Port
    )

    Test-NetConnection $Hostname -Port $Port
}

function kc {
    kubectl config get-contexts
}

# Function grep($pattern, $path) {
#     Get-Content $path | Where-Object { $_ -match $pattern -and $_ -cmatch $pattern }
# }

Set-Alias vim nvim
Set-Alias g git
Set-Alias grep findstr
Set-Alias k kubectl
Set-Alias tig "C:\Program Files\Git\bin\tig.exe"
Set-Alias tail "C:\Program Files\Git\usr\bin\less.exe"
# Set-Alias tig "C:\TIC\.sources\Git\usr\bin\tig.exe"
# Set-Alias tail "C:\TIC\.sources\Git\usr\bin\less.exe" 


oh-my-posh init pwsh --config 'C:\TIC\env\my-env-configs\oh-my-posh-theme.json' | Invoke-Expression