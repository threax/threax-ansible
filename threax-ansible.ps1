$command = "$args"

$containerCommand = "docker run -it --rm"
$containerCommand += " -v $pwd\ansible\hosts:/etc/ansible/hosts"

if($command){
    $containerCommand += "  --entrypoint `"ansible`" threax/ansible $command"
}
else{
    $containerCommand += " threax/ansible"
}

Write-Host "$containerCommand" 
Invoke-Expression $containerCommand