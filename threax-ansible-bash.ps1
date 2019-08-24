$command = "$args"
$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path
$ansibleExe = "/bin/bash"

. $scriptPath\setupcommand.ps1

Write-Host "$containerCommand" 
Invoke-Expression $containerCommand