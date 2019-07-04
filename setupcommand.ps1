$containerCommand = "docker run -it --rm"
$containerCommand += " -v $pwd\ansible\hosts:/etc/ansible/hosts"
$containerCommand += " -v $pwd\playbooks:/ansible/playbooks"
if (Test-Path $env:USERPROFILE\.ssh\id_rsa -PathType Leaf)
{
    $containerCommand += " -v $env:USERPROFILE\.ssh\id_rsa:/root/.ssh_in/id_rsa"
    $containerCommand += " -v $env:USERPROFILE\.ssh\id_rsa.pub:/root/.ssh_in/id_rsa.pub"
}

if($command){
    $containerCommand += " threax/ansible $ansibleExe $command"
}
else{
    $containerCommand += " threax/ansible /bin/bash"
}