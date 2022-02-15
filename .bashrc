# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias b="doas make clean install"
alias r="ranger"
alias sp="spotifyd;spt"
alias brb="doas grub-mkconfig -o /boot/grub/grub.cfg"
alias tshark="doas tshark -i eno1"
alias reboot="doas shutdown -r now"
alias cal="cal 2022"
alias ks="killall spotifyd"
alias btop="bashtop"
alias fin="setxkbmap fi"
alias us="setxkbmap us"
alias gparted="pkttyagent -p $(echo $$) | pkexec gparted"
alias ll="ls -la"
alias x="xrdb ~/.Xresources"
alias su="doas su"
alias pol="pkttyagent -p $(echo $$) | pkexec"
alias poweroff="loginctl poweroff"
alias reboot="loginctl reboot"
alias ka="killall"
alias spi="spicetify config current_theme"
alias spf="ls ~/.config/spicetify/Themes"
alias spa="spicetify apply"
alias push="git add . && git commit -m "something" && git push"
alias update="doas emerge --sync -q && doas emerge -auDN @world --exclude firefox"
alias s="cd .cargo/bin/; ./ncspot"
alias compiletime="doas genlop -t"
