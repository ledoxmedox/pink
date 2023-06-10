$destinationFolder = "$env:APPDATA\spicetify\themes\pink"

if (Test-Path $destinationFolder -PathType Container) {
    Remove-Item $destinationFolder -Recurse -Force
}

Set-Location "$env:APPDATA\spicetify\themes"

git clone https://github.com/ledoxmedox/pink

spicetify config current_theme pink

spicetify apply

$destinationFolder = "$env:APPDATA\spicetify\themes\pink"

$filesToDelete = @(
    "install.ps1",
    "README.md"
)

foreach ($file in $filesToDelete) {
    $filePath = Join-Path -Path $destinationFolder -ChildPath $file

    if (Test-Path $filePath -PathType Leaf) {
        Remove-Item $filePath -Force
        Write-Host "Deleted file: $file"
    }
}
