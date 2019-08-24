$containerCommand = "docker run -it --rm"
$containerCommand += " -v $pwd\ansible\hosts:/etc/ansible/hosts"
$containerCommand += " -v $pwd\playbooks:/ansible/playbooks"

$filesPath = "$pwd\files"
if(Test-Path $filesPath)
{
    $containerCommand += " -v ${filesPath}:/ansible/files"
}

if (Test-Path $env:USERPROFILE\.ssh\id_rsa -PathType Leaf)
{
    $containerCommand += " -v $env:USERPROFILE\.ssh\id_rsa:/root/.ssh_in/id_rsa"
    $containerCommand += " -v $env:USERPROFILE\.ssh\id_rsa.pub:/root/.ssh_in/id_rsa.pub"
}

$containerCommand += " --mount source=threaxansibletemp,target=/ansible-temp"

if($command){
    $containerCommand += " threax/ansible $ansibleExe $command"
}
else{
    $containerCommand += " threax/ansible /bin/bash"
}