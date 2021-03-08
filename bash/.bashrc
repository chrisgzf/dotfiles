export PATH=~/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
eval "$(starship init bash)"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/c/chrisgzf/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/c/chrisgzf/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/c/chrisgzf/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/c/chrisgzf/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
# 
# export MOZZIENET_USE_GPU=1
# export MOZZIENET_USE_GPU=1

alias ls='ls --color=auto'

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias g=git
alias vim=nvim
alias vimrc="vim ~/.config/nvim/init.vim"
alias vvim=/usr/bin/vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
