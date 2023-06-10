$destinationFolder = "$env:APPDATA\spicetify\themes"

git clone https://github.com/ledoxmedox/pink $destinationFolder

spicetify config current_theme pink

spicetify apply
