wget -O background.jpg https://i.ytimg.com/vi/YCaGYUIfdy4/maxresdefault.jpg
$dir = Get-Location
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "WallPaper" -value "$dir/background.jpg"

Start-Sleep -Seconds 1
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters