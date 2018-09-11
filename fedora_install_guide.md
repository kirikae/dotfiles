
## Packages


```
sudo dnf install \
wpa_supplicant \
NetworkManager-wifi \
dnf-plugin-tracer \
network-manager-applet \
NetworkManager-openvpn \
git \
tmux \
xcb-util-devel \
xcb-util-keysyms-devel \
xcb-util-wm-devel \
alsa-lib-devel \
dmenu \
rxvt-unicode \
arc-theme \
terminus-fonts \
dejavu-sans-mono-fonts \
liberation-*-fonts \
@development-tools \
@base-x \
htop \
lightdm \
lightdm-gtk \
xclip \
pciutils \
iwl7260-firmware \
bash-completion \
stow \
firefox \
xorg-x11-server-Xorg \
xorg-x11-drv-evdev \
xorg-x11-drv-intel \
xorg-x11-drv-libinput \
xorg-x11-xinit \
xterm \
firefox \
vim \
powertop \
tlp \
fwupd \
xbacklight \
volumeicon \
glx-utils \
mesa-dri-drivers \
mesa-vulkan-drivers \
plymouth-system-theme \
xorg-x11-drv-evdev \
xorg-x11-drv-fbdev \
xorg-x11-drv-intel \
xorg-x11-drv-libinput \
xorg-x11-drv-vesa \
xorg-x11-server-Xorg \
xorg-x11-server-utils \
xorg-x11-utils \
xorg-x11-xauth \
xorg-x11-xinit \
xorg-x11-apps \
libxkbcommon-x11 \
libxkbcommon-x11-devel \
flex \
bison \
pango \
pango-devel \
cairo \
cairo-devel \
glib2 \
glib2-devel \
librsvg2 \
librsvg2-devel \
libxkbcommon \
libxkbcommon-devel \
libxkbcommon-x11 \
libxkbcommon-x11-devel \
libxcb \
libxcb-devel \
startup-notification \
startup-notification-devel \
xcb-util \
xcb-util-devel \
xcb-util-wm \
xcb-util-wm-devel \
xcb-util-xrm \
xcb-util-xrm-devel \
check \
check-devela \
xbacklight \
xscreensaver \
xcompmgr \
xrandr \
arandr \
xsel \
xclip \
xkill \
adwaita-gtk2-theme \
adwaita-icon-theme \
dmenu \
i3lock \
feh \
jsoncpp \
libmpdclient \
libcurl-devel \
xcb-util-devel \
xcb-proto \
xcb-util-image-devel \
xcb-util-wm-devel \
xcb-util-cursor-devel \
cairo-devel \
libxcb-xrm-devel \
i3-ipc \
jsoncpp-devel \
libmpdclient-devel \
pulseaudio-libs-devel \
wireless-tools-devel \
libnl3-devel \
xautolock \
x11-ssh-askpass \
xdg-utils \
lm_sensors \
xsensors \
dbus-x11 \
tree \
cmake \
pulseaudio \
pulseaudio-libs \
pulseaudio-utils \
alsa-plugins-pulseaudio \
alsa-utils \
pavucontrol \
gstreamer1 \
gstreamer1-plugins-bad-free \
gstreamer1-plugins-bad-free-gtk \
gstreamer1-plugins-base \
gstreamer1-plugins-good
```

These need to be done after the initial package installs... nVidia seems to cause some odd issues with X11
TODO: Troubleshoot nVidia drivers
`sudo dnf install fedora-workstation-repositories`
`sudo dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver`
`sudo dnf config-manager --set-enabled rpmfusion-nonfree-steam`


## Environment setup

`systemctl enable lightdm.service`
`systemctl set-default graphical.target`

```
mkdir ~/{Repositories}
git clone git@github.com:kirikae/.dotfiles.git ~/Repositories/.dotfiles --recursive
git clone	https://github.com/baskerville/bspwm.git ~/Repositories/bspwm
git clone https://github.com/baskerville/sxhkd.git ~/Repositories/sxhkd
git clone https://github.com/baskerville/xdo.git ~/Repositories/xdo
git clone https://github.com/baskerville/sutils.git ~/Repositories/sutils
git clone https://github.com/baskerville/xtitle.git ~/Repositories/xtitle
git clone --branch 3.2 --recursive https://github.com/jaagr/polybar.git ~/Repositories/polybar
stow -t ~ -d ~/Repositories/.dotfiles vim
stow -t ~ -d ~/Repositories/.dotfiles bash
stow -t ~ -d ~/Repositories/.dotfiles x
stow -t ~ -d ~/Repositories/.dotfiles bspwm
stow -t ~ -d ~/Repositories/.dotfiles
stow -t ~ -d ~/Repositories/.dotfiles
```

## General Hardware Configuration

If only using a SSD of some kind, we can disable lvmetad to prevent annoying warnings be spat out for no benefit.

`vim /etc/lvm/lvm.conf` and replace the line `use_lvmetad = 1` with `use_lvmetad = 0`

Fixes for some oddities of the hardware, append to the `GRUB_CMDLINE_LINUX`

`i915.edp_vswing=2 i915.preliminary_hw_support=1 acpi_backlight=vendor acpi_osi=Linux`
