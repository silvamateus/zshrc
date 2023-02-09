
alias ls='ls --color=always'
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/passocacornio/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
#
#
#
autoload -Uz promptinit
promptinit

export ZSH=/home/passocacornio/.config/.zsh

# source ~/.config/.zsh/themes/Ducula/ducula.zsh-theme 

setopt PROMPT_SUBST
source "/home/passocacornio/.config/.zsh/themes/spaceship-zsh-theme/spaceship.zsh"

source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
source $ZSH/plugins/git.plugin.zsh
source $ZSH/plugins/pyenv.plugin.zsh



ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#1c1c1c,bg=white,bold,underline"

# key bindings
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down 

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

