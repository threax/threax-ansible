$command = "$args"
$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path

. $scriptPath\setupcommand.ps1

if($command){
    $containerCommand += "  --entrypoint `"ansible-playbook`" threax/ansible $command"
}
else{
    $containerCommand += " threax/ansible"
}

Write-Host "$containerCommand" 
Invoke-Expression $containerCommand