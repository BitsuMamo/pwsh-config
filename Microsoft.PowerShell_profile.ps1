neofetch

function Invoke-Starship-TransientFunction {
  &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt


function touch($file) { "" | Out-File $file -Encoding ASCII }

function pkill($name) {
    Get-Process $name -ErrorAction SilentlyContinue | Stop-Process
}

function pgrep($name) {
    Get-Process $name
}

Set-Alias -Name cd -Value z -Option AllScope
Set-Alias -Name cat -Value bat -Option AllScope

function br {
    &"$PSScriptRoot\Set-WindowsTerminalBackgroundImage.ps1" -RandomBackgroundFolder C:\Users\Bitsu\Pictures\nord-background -All
}

Invoke-Expression (& { (zoxide init powershell | Out-String) })

