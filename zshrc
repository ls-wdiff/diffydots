
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export EDITOR='micro'

ZSH_THEME="powerlevel10k/powerlevel10k"

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

plugins=(
		git
		sudo
		zsh-syntax-highlighting
		zsh-autosuggestions
)

function ranger-cd { ranger --choosedir=/tmp/ranger_last_dir ${@:-${PWD}} && cd "$(</tmp/ranger_last_dir)" }

source $ZSH/oh-my-zsh.sh

alias ls="eza -Al --group-directories-first --icons=auto"
alias zrc="micro ~/.zshrc"
alias hrc="micro ~/.config/hypr/hyprland.conf"
alias krc="micro ~/.config/kitty/kitty.conf"
alias wrc="cd ~/.config/waybar"
alias s="paruz"
alias t="theme.sh"
alias z="ranger-cd"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
