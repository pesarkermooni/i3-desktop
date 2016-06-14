## i3 Desktop
Beautiful Desktop with i3wm, slim, etc. 

### Screenshot
---
![screenshot](https://github.com/rasoolsn/i3-desktop/blob/master/Screenshot/ws1.jpg)


* [Prerequisite](https://github.com/rasoolsn/i3-desktop/blob/master/README.md#prerequisite)
* [Important NOTE](https://github.com/rasoolsn/i3-desktop/blob/master/README.md#important-note)
* [Other Screenshots](https://github.com/rasoolsn/i3-desktop/blob/master/README.md#other-screenshots)

### Prerequisite 
---
#### Required:
```
bash compton conky dzen2 feh fonts-droid i3-wm i3lock imagemagick rofi rxvt scrot slim
```
#### Optional:
```
breeze-cursor-theme breeze-icon-theme kbdd lxappearance mlterm mplayer orion-gtk-themie profanity redshift telegram xcalib
```

### Important NOTE
---
#### 1. How to use this project:
* Download and extract the repository
* Copy "Files" & "config" in `~/.i3/`
* Copy "Files/slim/slim.conf" in `/etc/` directory.
* Copy "Files/slim/rasubuntu" in `/usr/share/slim/theme/` directory
* Copy "Files/mlterm/{color,main}" in `~/.mlterm`
* Copy "Files/profanity/rxvt.theme" in `~/.config/profanity/themes/`
* Install fonts into the "Files/font" directory
* Access to all script:
	```
	$ find ~/.i3/Files/ -iname "*.sh" -exec chmod +x {} \;
	```

#### 2. Recommendations:
* Be sure to read the all sources.
* My monitor is 1024x768 resolution. :) So should the files be changed according to your resolution.
* All existing script, were written based on personal need.
* "aptlist.sh" script, specific to `Debian-based` distributions as well. For other distributions should change script.
* All temporary files in `/tmp/` saved.
* You can see the font "awesome icons" in the "Libreoffice".

### Other Screenshots
---
Slim login manager
![screenshot](https://github.com/rasoolsn/i3-desktop/blob/master/Screenshot/slim.jpg)

Workspace 3: Media
![screenshot](https://github.com/rasoolsn/i3-desktop/blob/master/Screenshot/ws3.jpg)

Lock screen (i3lock)
![screenshot](https://github.com/rasoolsn/i3-desktop/blob/master/Screenshot/i3-lock.jpg)

Rofi (App launcher)
![screenshot](https://github.com/rasoolsn/i3-desktop/blob/master/Screenshot/rofi.jpg)
