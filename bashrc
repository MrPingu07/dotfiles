#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach
[[ $- != *i* ]] && return

alias sudo='doas'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

RESET=$(tput sgr0)
PURPLE=$(tput setaf 5)
CYAN_BOLD=$(tput bold; tput setaf 6)
PS1="\[${PURPLE}\][\[${CYAN_BOLD}\]\u\[${RESET}\]\[${PURPLE}\]@\[${CYAN_BOLD}\]\h \[${PURPLE}\]\W]\$\[${RESET}\] "

fastfetch
[[ ${BLE_VERSION-} ]] && ble-attach
