$targetPath = Join-Path $env:LOCALAPPDATA "Discord"

try {
    if (Test-Path $targetPath) {
        Remove-Item $targetPath -Recurse -Force -ErrorAction Stop
        Write-Host "LocalAppData icindeki Discord klasoru silindi." -ForegroundColor Green
    }
    else {
        Write-Host "LocalAppData icinde Discord klasoru bulunamadi." -ForegroundColor Yellow
    }
}
catch {
    Write-Host "Silme islemi basarisiz: $($_.Exception.Message)" -ForegroundColor Red
}