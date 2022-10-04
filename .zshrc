PROMPT="%~ > "
plugins=(git zsh-autosuggestions web-search command-time history)
ZSH_COMMAND_TIME_MIN_SECONDS=1
ZSH_COMMAND_TIME_MSG="%s"
ZSH_COMMAND_TIME_COLOR="white"
ZSH_COMMAND_TIME_EXCLUDE=()

export ZSH="$HOME/.config/oh-my-zsh"
source $ZSH/oh-my-zsh.sh
unsetopt ALWAYS_LAST_PROMPT

#ALIASES
alias defaults="doas nvim -n /etc/portage/env/defaults"
alias keywords="doas nvim -n /etc/portage/package.accept_keywords"
alias ct="doas genlop -t"
alias clean="doas eclean distfiles && doas eclean packages"
alias repoadd="doas eselect repository enable"
alias repodis="doas eselect repository disable"
alias list="qlist -I"
alias dp="doas emerge --depclean -a"
alias emerge="doas emerge --autounmask{,-write,-continue}"
alias dispatch-conf="doas dispatch-conf"
alias rc-update="doas rc-update"
alias rc-service="doas rc-service"
alias eix-sync="doas eix-sync"
alias useflags="doas nvim -n /etc/portage/package.use"
alias mask="doas nvim -n /etc/portage/package.mask"
alias glsa="doas glsa-check -f all"
alias ei="emerge --info"
alias es="doas emerge --sync"
alias make.conf="doas nvim -n /etc/portage/make.conf"
alias oldemerge="QUICKPKG_DEFAULT_OPTS="--include-config=y" emerge --ask --usepkgonly --quickpkg-direct=y --quickpkg-direct-root=/games/oldgentoo"
alias env="doas nvim -n /etc/portage/package.env"
alias b="doas make clean install"
alias cal="cal 2022"
alias ks="killall spotifyd"
alias fin="setxkbmap fi"
alias us="setxkbmap us"
alias xr="xrdb ~/.Xresources"
alias ka="killall"
alias bt="doas rc-service bluetooth start"
alias bs="doas rc-service bluetooth stop"
alias vpn="doas rc-service nordvpn start && sleep 1 && nordvpn c sweden"
alias movies="cd /mnt/games/movies"
alias kp="killall picom"
alias reboot="killall d & doas reboot"
alias poweroff="killall d & doas poweroff"
#alias l="ls -lgGh "
alias l="exa --no-user --octal-permissions --no-permissions -l"
alias spotifyd="spotifyd --no-daemon"
alias lll="ls -lAgG */*"
alias pass="base64 /dev/urandom | head -n 1"
alias s="du -sh *"
alias gc="git clone"
alias pp="sh ~/.config/picom.sh"
alias bb="doas make clean && doas make -j6 && doas make modules_install install && doas emerge @module-rebuild && cd arch/x86/boot"
alias lf="export LC_ALL=en_US.UTF-8 && lfrun && killall lf"
alias mtr="doas mount /dev/sdb1 /games & doas mount /dev/nvme0n1p1 /efi"
alias t="tput reset"
alias nvim -n="nvim -n"
alias unmask="doas nvim -n /etc/portage/package.unmask"
alias steam="steam -no-browser -console -no-sandbox -no-cef-sandbox"
alias d="doas"
alias ss="source ~/.zshrc"
alias btt="bluetoothctl power on"
alias fetch="doas ebuild *.ebuild digest fetch"
alias overlay="cd /var/db/repos/making"
alias virt-manager="doas rc-service dbus start & doas rc-service libvirtd start && virt-manager"
alias f="xrandr --output DP-2 --mode 2560x1440 --refresh 144 --output DP-0 --mode 2560x1440 --refresh 165 --right-of DP-2 &"
alias gentoo="cd /var/db/repos/gentoo"
alias bbb="doas make CC=/usr/lib/llvm/14/bin/clang clean && doas make CC=/usr/lib/llvm/14/bin/clang -j6 LD=/usr/bin/ld.lld AR=/usr/lib/llvm/14/bin/llvm-ar NM=/usr/lib/llvm/14/bin/llvm-nm STRIP=/usr/lib/llvm/14/bin/llvm-strip OBJCOPY=/usr/lib/llvm/14/bin/llvm-objcopy OBJDUMP=/usr/lib/llvm/14/bin/llvm-objdump READELF=/usr/lib/llvm/14/bin/llvm-readelf HOSTCC=/usr/lib/llvm/14/bin/clang HOSTCXX=/usr/lib/llvm/14/bin/clang++ HOSTAR=/usr/lib/llvm/14/bin/llvm-ar HOSTLD=/usr/bin/ld.lld && doas make CC=/usr/lib/llvm/14/bin/clang modules_install install && doas emerge @module-rebuild && cd arch/x86/boot"
alias bbbb="doas make clean && doas make CC=/usr/lib/llvm/14/bin/clang -j6 LD=/usr/bin/ld.lld AR=/usr/lib/llvm/14/bin/llvm-ar NM=/usr/lib/llvm/14/bin/llvm-nm STRIP=/usr/lib/llvm/14/bin/llvm-strip OBJCOPY=/usr/lib/llvm/14/bin/llvm-objcopy OBJDUMP=/usr/lib/llvm/14/bin/llvm-objdump READELF=/usr/lib/llvm/14/bin/llvm-readelf HOSTCC=/usr/lib/llvm/14/bin/clang HOSTCXX=/usr/lib/llvm/14/bin/clang++ HOSTAR=/usr/lib/llvm/14/bin/llvm-ar HOSTLD=/usr/bin/ld.lld && doas make CC=/usr/lib/llvm/14/bin/clang modules_install install && doas emerge @module-rebuild && cd arch/x86/boot"