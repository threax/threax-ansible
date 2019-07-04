$command = "$args"

$containerCommand = "docker run -it --rm"
$containerCommand += " -v $pwd/ansible/hosts:/etc/ansible/hosts"

if($command){
    $containerCommand += " threax/ansible $command"
}
else{
    $containerCommand += " --entrypoint `"bin/bash`" threax/ansible"
}

Write-Host "$containerCommand" 
Invoke-Expression $containerCommand