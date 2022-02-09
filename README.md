### CLI
zsh / neovim / ranger / htop / cronie / tmux / ripgrep

### Wayland
alacritty / sway{bg,idle,lock} / dunst / bemenu / j4-dmenu-desktop<sup>AUR</sup>

light / grim + slurp + jq / wl-clipboard / gammastep

### Theme
breeze-gtk / breeze-icons / xcursor-breeze<sup>AUR</sup> / ttf-hack / ttf-roboto

---
### Base
base / base-devel / linux-firmware / linux-hardened / intel-ucode

### Disks
ntfs-3g / exfat-utils / dosfstools / mtools / btrfs-progs

### Archiving
zip / unzip / unrar / p7zip

### Boot loader
os-prober / efibootmgr (uefi) / grub / grub-btrfs

### Security
apparmor / firejail / nftables / firewalld / arch-audit

---
### Other
udisks2 / xdg-user-dirs / tlp / atool / polkit-gnome / libappindicator-gtk3
/ gnome-keyring / android-tools / bluez{-utils} / inetutils / imagemagick / man-db
/ docker / mupdf / imv / mpv / snapper

---
### Enable AppArmor as default security model
Add these line to `/etc/default/grub`:
```
GRUB_CMDLINE_LINUX_DEFAULT="apparmor=1 security=apparmor"
```

### Mount Options
For /home partition (ext4), use `nodev` & `nosuid`
For / partition (btrfs), use `defaults`, `compress=zstd` & `noatime` in addition of `subvol=`

### Btrfs Subvolumes
create subvolumes of `@`, `@srv`, `@.snapshots`, `@tmp` & `@root`

### Install Packer.nvim
```
$ mkdir ~/.local/share/nvim/site/pack/packer/start && \
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
