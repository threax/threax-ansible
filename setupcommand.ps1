$containerCommand = "docker run -it --rm"
$containerCommand += " -v $pwd\ansible\hosts:/etc/ansible/hosts"