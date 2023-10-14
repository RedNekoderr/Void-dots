#/bin/bash

sudo xbps-install -Su seatd dbus zsh git curl brillo linux6.5 mesa-dri wlroots wlroots-devel btop neovim firefox Waybar rofi alacritty telegram-desktop alsa-utils pipewire wireplumber bluez libspa-bluetooth xdg-desktop-portal noto-fonts-cjk noto-fonts-ttf noto-fonts-emoji python3-pip xdg-utils xdg-user-dirs opendoas
mkdir -p $HOME/Documents/Git/Cloned
mkdir -p $HOME/Downloads
# git clone https://github.com/void-linux/void-packages $HOME/void-packages
# $HOME/void-packages/xbps-src binary-bootstrap
# git clone https://github.com/Makrennel/hyprland-void.git $HOME/Documents/Git/Cloned
# cat $HOME/Documents/Git/Cloned/hyprland-void/common/shlibs >> $HOME/void-packages/common/shlibs
# cp -r $HOME/Documents/Git/Cloned/hyprland-void/srcpkgs/* $HOME/void-packages/srcpkgs/
# $HOME/void-packages/xbps-src pkg hyprland
# $HOME/void-packages/xbps-src pkg hyprpaper
# $HOME/void-packages/xbps-src pkg xdg-desktop-portal-hyprland
# sudo xbps-install -R $HOME/void-packages/hostdir/binpkgs hyprland
# sudo xbps-install -R $HOME/void-packages/hostdir/binpkgs hyprpaper
# sudo xbps-install -R $HOME/void-packages/hostdir/binpkgs xdg-desktop-portal-hyprland
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo usermod -aG _seatd kira
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/seatd /var/service
sudo ln -s /etc/sv/bluetoothd /var/service
mkdir -p $HOME/.config
cp -rf $HOME/Downloads/config/* $HOME/.config
mv $HOME/.config/.scripts $HOME
