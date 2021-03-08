eval "$(starship init zsh)"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# fnm
eval "$(fnm env --multi)"

# run z
. $(brew --prefix)/etc/profile.d/z.sh

# aliases
alias g=git
alias psql="psql -U postgres"
alias examrecord='ffmpeg -f avfoundation -r 1 -probesize 20M -threads 1 -i "1:none" -vcodec libx264 -b:v 128k -s hd720 /Users/chris/e0406358.mp4'
alias dcr="docker-compose down && docker-compose build --no-cache && docker-compose up"
alias f="cd ~/fluminus_cli && mix fluminus --download-to=$(realpath -e ~/school)"
alias vim=nvim
alias vimrc="nvim ~/.dotfiles/nvim/.config/nvim/init.vim"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/chris/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/chris/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/chris/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/chris/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(rbenv init -)"

if [[ `uname` == Darwin ]]; then
    MAX_MEMORY_UNITS=KB
else
    MAX_MEMORY_UNITS=MB
fi

TIMEFMT='%J'$'\n%U'$'\nuser %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'

export PATH="$HOME/.poetry/bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
