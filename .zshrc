# Path to your oh-my-zsh installation.
export ZSH=/home/kelog/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

. ~/.theme.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=60

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# unlimited history size
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker bower gradle grails gulp mvn npm node)

# ctrl-g opens editor with command line
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^G" edit-command-line

# User configuration

# Konsole color changing
theme-dark() {
  printf '\033Ptmux;\033\033]50;konsoleprofile colors=Solarized\007\033\\'
  sed -i.bak s/background=light/background=dark/g ~/.vimrc
  sed -i.bak "s/.*set -g status-bg colour.*/set -g status-bg colour0/g" ~/.tmux.conf
  sed -i.bak "s/.*set -g status-fg colour.*/set -g status-fg colour7/g" ~/.tmux.conf
  sed -i.bak "s/.*Solarized.*/ColorScheme=Solarized Dark/g" ~/.local/share/konsole/Profile\ 1.profile
  tmux source-file ~/.tmux.conf
  echo "ZSH_THEME=\"agnoster-kelog\"" > ~/.theme.sh
  source ~/.zshrc
}
theme-light() {
  printf '\033Ptmux;\033\033]50;konsoleprofile colors=SolarizedLight\007\033\\'
  sed -i.bak s/background=dark/background=light/g ~/.vimrc
  sed -i.bak "s/.*set -g status-bg colour.*/set -g status-bg colour7/g" ~/.tmux.conf
  sed -i.bak "s/.*set -g status-fg colour.*/set -g status-fg colour0/g" ~/.tmux.conf
  sed -i.bak "s/.*Solarized.*/ColorScheme=SolarizedLight/g" ~/.local/share/konsole/Profile\ 1.profile
  tmux source-file ~/.tmux.conf
  echo "ZSH_THEME=\"agnoster-light-kelog\"" > ~/.theme.sh
  source ~/.zshrc
}

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:."
export PATH=./node_modules/.bin:$PATH

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias s='sudo'
alias gitk='gitk --all'
alias gitg='gitg --all'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
alias mocha="mocha --no-colors"

setopt NO_HUP

# kelog - for tmux+vim
export TERM="xterm-256color"

eval `dircolors ~/.dircolors`

stty -ixon

export NVM_DIR="/home/kelog/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# this slows down everything!!
#export SDKMAN_DIR="/home/kelog/.sdkman"
#[[ -s "/home/kelog/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kelog/.sdkman/bin/sdkman-init.sh"

