export SHELL="$(which zsh)"
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

export ZSH=$HOME/.config/.zsh

# source ~/.config/.zsh/themes/Ducula/ducula.zsh-theme 

setopt PROMPT_SUBST

function checkIFDirExists() {

if [ -d $1  ]
then
    source "$1/$2"
else
    git clone "$3" "$1" 
fi

}

function checkAndDownload() {

if [ -f "$1/$2"  ]
then
    source "$1/$2"
else
    wget "$3" -O "$1/$2" 
fi

}

if [ -d "$ZSH/plugins/zsh-completions"  ]
then
    fpath=($ZSH/plugins/zsh-completions/src $fpath)
else
    git clone "https://github.com/zsh-users/zsh-completions.git" "$ZSH/plugins/zsh-completions" 
fi



checkIFDirExists "$ZSH/themes/spaceship-prompt" "spaceship.zsh" "https://github.com/spaceship-prompt/spaceship-prompt.git"
checkIFDirExists "$ZSH/plugins/zsh-syntax-highlighting" "zsh-syntax-highlighting.zsh" "https://github.com/zsh-users/zsh-syntax-highlighting.git"
checkIFDirExists "$ZSH/plugins/zsh-history-substring-search" "zsh-history-substring-search.zsh" "https://github.com/zsh-users/zsh-history-substring-search.git"
checkIFDirExists "$ZSH/plugins/zsh-autosuggestions" "zsh-autosuggestions.zsh" "https://github.com/zsh-users/zsh-autosuggestions.git"

checkAndDownload "$ZSH/plugins" "git.plugin.zsh" "https://github.com/ohmyzsh/ohmyzsh/raw/master/plugins/git/git.plugin.zsh"
checkAndDownload "$ZSH/plugins" "pyenv.plugin.zsh" "https://github.com/ohmyzsh/ohmyzsh/raw/master/plugins/pyenv/pyenv.plugin.zsh"


export PATH="$PATH:$HOME/.local/bin"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#1c1c1c,bg=white,bold,underline"

# key bindings
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down 

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


function mkcd
{
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


hyfetch
