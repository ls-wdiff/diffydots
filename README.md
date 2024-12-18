# diffydots
Hyprland Setup and Scripts
![image](https://github.com/user-attachments/assets/621d06f1-5691-494e-b14a-f7945c782833)



Explicit Package List
```
amd-ucode 20240809.59460076-1
base 3-2
base-devel 1-2
bat 0.24.0-2
chaotic-keyring 20230616-1
chaotic-mirrorlist 20240306-1
efibootmgr 18-3
eza 0.19.2-1
ffmpegthumbnailer 2.2.2-6
file-roller 44.3-1
git 2.46.0-2
gnome-keyring 1:46.2-1
go 2:1.23.1-1
grimblast-git r106.9d67858-1.1
gst-plugin-pipewire 1:1.2.3-1
gvfs 1.54.2-1
hyprland-git 0.43.0.r4.7c4c402b-1
imagemagick 7.1.1.38-2
inotify-tools 4.23.9.0-1
kitty 0.36.2-1
less 1:661-1
libpulse 17.0-3
linux-cachyos 6.10.8-1
linux-cachyos-headers 6.10.8-1
linux-firmware 20240809.59460076-1
linux-zen 6.10.8.zen1-1
loupe 46.2-1
micro 2.0.14-1
neovim 0.10.1-3
networkmanager 1.48.10-1
npm 10.8.3-1
ntfs-3g 2022.10.3-1
nvm 0.40.1-1
nwg-look 0.2.7-1
paru-bin 2.0.3-3
paru-bin-debug 2.0.3-3
paruz 1.1.2-1
pavucontrol-gtk3 1:5.0-1
pfetch-rs-bin 2.11.0-1
pipewire 1:1.2.3-1
pipewire-alsa 1:1.2.3-1
pipewire-jack 1:1.2.3-1
pipewire-pulse 1:1.2.3-1
polkit-gnome 0.105-11
python-pillow 10.4.0-1
python-pygments 2.18.0-1
python-pywal 3.3.0-9
ranger 1.9.3-11
rofi-lbonn-wayland-git 1.7.5.wayland3.r26.gd88b475b-1
swaybg 1.2.1-1
thunar 4.18.11-1
thunar-archive-plugin 0.5.2-1
thunar-volman 4.18.0-2
ttf-profont-nerd 3.2.1-2
tumbler 4.18.2-1
vivaldi 6.9.3447.41-1
vivaldi-ffmpeg-codecs 128.0.6613.103-1
waybar-git r3625.5d184f74-1
wireplumber 0.5.6-1
wl-clipboard 1:2.2.1-2
xdg-desktop-portal 1.18.4-1
xdg-desktop-portal-hyprland-git 1.3.3.r12.g11e15b43-1
xdg-user-dirs 0.18-2
xdg-utils 1.2.1-1
zsh 5.9-5
```

Polkit Bypass
in /etc/polkit-1/rules.d/49-nopasswd_global.rules

```
polkit.addRule(function(action,subject){
    if(subject.isInGroup("wheel")){
        return polkit.Result.YES;
    }
});
```

to move .zshrc to another dir
add `export ZDOTDIR=/home/nx/.config/.zdot` to /etc/zsh/

chaotic-aur

```
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
```

zsh-plugins

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Launch Hyprland on login automatically

```
if [[ -z "${WAYLAND_DISPLAY}" ]] && [[ "${XDG_VTNR}" = "1" ]]; then
  exec dbus-run-session Hyprland
fi
```

Steam Command to run steam from tty
`STEAM_MULTIPLE_XWAYLANDS=1 gamemoderun gamescope -W 2560 -H 1440 -r 165 -e --xwayland-count 2 --adaptive-sync -- steam -gamepadui -steamdeck`
