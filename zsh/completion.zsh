fpath=(/opt/homebrew/share/zsh/site-functions $HOME/.zsh/completion $fpath)

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
zstyle ':complition:*:*:*:*:*' menu select
zstyle ':complition:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # case insensitive tab complition
zstyle ':complition:*' list-colors "${(s.:.)LS_COLORS}" 	# Take advantage of $LS_COLORS for completion as well
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes