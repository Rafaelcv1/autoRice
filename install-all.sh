#!/bin/sh

sudo pacman -Syu

#default packages
sudo pacman -S noto-fonts-emoji ttf-font-awesome ttf-jetbrains-mono-nerd ca-certificates pipewire pulseaudio wireplumber
sudo pacman -S hyprland kitty zsh firefox fastfetch git yazi wofi mpv less waybar tmux 7zip imagemagick uwsm libnewt python-pip wl-clipboard KeePassXC proton-vpn-gtk-app network-manager-applet torbrowser-launcher swww xorg-xrandr brightnessctl pavucontrol dunst zoxide ueberzugpp poppler resvg discord gzip libavif mise rclone gnome-keyring libsecret docker eza

#set AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

#more default packages
yay -S grimblast nerd-fonts hyprshot

#lazyvim dependencies
sudo pacman -S fzf fd unzip fish ripgrep ast-grep luarocks lazygit wget ruby cargo sqlfluff prettier php npm julia jdk-openjdk ghostscript tectonic mermaid-cli typst python-pynvim tree-sitter
sudo npm install -g neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
gem install neovim
yay -S libtexprintf

#set zsh
chsh -s /usr/bin/zsh

#ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#copy dotfiles
cp -r .config ~/
cp .p10k.zsh .zshrc ~/
