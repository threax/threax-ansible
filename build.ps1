$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path

docker build --pull $scriptPath -t threax/ansible