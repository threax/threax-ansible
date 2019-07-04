$command = "$args"

if($command){
    #Write-Host "Running docker run -it --rm threax/ansible $command" 
    docker run -it --rm threax/ansible $command
}
else{
    #Write-Host "Running without command" 
    docker run -it --rm --entrypoint "bin/bash" threax/ansible
}