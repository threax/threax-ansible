$command = "$args"
$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path
$ansibleExe = "ansible-playbook"

. $scriptPath\setupcommand.ps1

Write-Host "$containerCommand" 
Invoke-Expression $containerCommand