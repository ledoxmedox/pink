$destinationFolder = "$env:APPDATA\spicetify\themes\pink"

if (Test-Path $destinationFolder -PathType Container) {
    Remove-Item $destinationFolder -Recurse -Force
}

Set-Location "$env:APPDATA\spicetify\themes"

git clone https://github.com/ledoxmedox/pink

spicetify config current_theme pink

spicetify apply