Import-Module posh-git
Import-Module DockerCompletion
Import-Module DockerComposeCompletion

Set-PSReadlineOption -BellStyle None

if (Get-Command vim -ErrorAction Ignore) {
    Set-PSReadlineOption -EditMode vi
    Set-PSReadlineKeyHandler -Key Ctrl+r -Function ReverseSearchHistory
    Set-PSReadlineKeyHandler -Key Ctrl+Shift+r -Function ForwardSearchHistory
    Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadlineKeyHandler -Key Shift+Tab -Function TabCompletePrevious
}

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
    dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}
