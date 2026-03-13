Get-Process discord -ErrorAction SilentlyContinue | Stop-Process -Force

$targetPath = Join-Path $env:APPDATA "Discord"

try {
    if (Test-Path $targetPath) {
        Remove-Item $targetPath -Recurse -Force -ErrorAction Stop
        Write-Host "AppData icindeki Discord klasoru silindi." -ForegroundColor Green
    }
    else {
        Write-Host "AppData icinde Discord klasoru bulunamadi." -ForegroundColor Yellow
    }
}
catch {
    Write-Host "Silme islemi basarisiz: $($_.Exception.Message)" -ForegroundColor Red
}