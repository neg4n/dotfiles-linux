### Required software & installation
Currently, there is no installation script  
for all these programs but (most likely) there will be one soon...
 - [feh](https://github.com/derf/feh)
 - [lightdm](https://github.com/canonical/lightdm)
 - [alacritty](https://github.com/alacritty/alacritty)
 - [flameshot](https://github.com/flameshot-org/flameshot)
 - [polybar](https://github.com/polybar/polybar)
 - [rofi](https://github.com/davatorium/rofi)
 - [i3-gaps](https://github.com/resloved/i3)
 - [picom](https://github.com/ibhagwan/picom)

### Extracting
Simply launch `./extract.sh` to overwrite all the configuration directories  
of corresponding programs across the system (usually only `$HOME/.config/`).
  
If script results in an error, it means that you have not installed  
everything from [list](#required-software--installation) or specific program's configuration  
directory does not exist and you have to create it manually in `$HOME/.config/`