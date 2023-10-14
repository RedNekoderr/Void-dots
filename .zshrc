if test -z "${XDG_RUNTIME_DIR}"; then
  export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
  if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  export XDG_CURRENT_DESKTOP=Hyprland
  export XDG_SESSION_DESKTOP=Hyprland
  dbus-run-session Hyprland
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/.local/bin:~/.cargo/bin
export XBPS_MAKEJOBS=$nproc
export EDITOR=nvim

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias in="doas xbps-install"
alias re="doas xbps-remove"
alias recl="doas xbps-remove -R -o"
alias up="doas xbps-install -Su"
alias ed="nvim"
alias l="ptls"
alias pcp="ptcp"
alias pd="ptpwd"
alias t="touch"
alias pwine="$HOME/PortWINE/PortProton/data/scripts/start.sh"
# alias gcc="/usr/bin/clang"
# alias g++="/usr/bin/clang++"
alias red="doas nvim"
alias reboot="doas reboot"
alias halt="doas shutdown -h now"
alias pls="doas"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

