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


Set-Alias g git
function gs { git status }
function ga { git add . }
function gp { git push }
function gpl { git pull }

function gitc {
    & git commit $args
}
Set-Alias gco gitc

Set-Alias l ls
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias k kubectl
Set-Alias tig "C:\Program Files\Git\bin\tig.exe"
Set-Alias tail "C:\Program Files\Git\usr\bin\less.exe"
# Set-Alias tig "C:\TIC\.sources\Git\usr\bin\tig.exe"
# Set-Alias tail "C:\TIC\.sources\Git\usr\bin\less.exe" 


oh-my-posh init pwsh --config 'C:\TIC\env\poweshell-config\oh-my-posh-theme.json' | Invoke-Expression


function ./ {
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$ScriptPath,

        [Parameter(Position=1, ValueFromRemainingArguments=$true)]
        [string[]]$Arguments
    )

    $command = "bash.exe -c `"$ScriptPath`" $Arguments"
    Invoke-Expression $command
}