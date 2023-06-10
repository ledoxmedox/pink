Set-Location "$env:APPDATA\spicetify\themes"

git clone https://github.com/ledoxmedox/pink

spicetify config current_theme pink

spicetify apply
