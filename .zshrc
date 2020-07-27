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
