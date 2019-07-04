$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path

docker build $scriptPath -t threax/ansible