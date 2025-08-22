# /bin/sh
# used for setting up any  new arch linux install for me
# Step 1. install packages used by my hyprland config
sudo pacman -S hyprland waybar kitty dolphin wofi swaybg hyfetch networkmanager network-manager-applet dunst pavucontrol brightnessctl pulseaudio pulseaudio-alsa playerctl blueman ttf-jetbrains-mono-nerd qt5ct xdg-desktop-portal-hyprland wl-clipboard grim slurp firefox zsh discord steam

# Step 2. copy config files to directories
mkdir /home/wii/.config/waybar
cp config /home/wii/.config/waybar/config
cp style.css /home/wii/.config/waybar/style.css
cp hyprland.conf /home/wii/.config/hypr/hyprland.conf

# Step 3. Install yay package manager

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Step 4. install oh my zsh!

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "remember to switch theme to agnoster"

