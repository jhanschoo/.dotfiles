# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  brew-cask
  gem
  git
  #github
  heroku
  mosh
  npm
  osx
  pip
  vagrant
  virtualenvwrapper
  zsh-syntax-highlighting
)

# User configuration

# Add user bin directories to PATH
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

if [[ -s "$ZSH/oh-my-zsh.sh" ]]; then
  source $ZSH/oh-my-zsh.sh
fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# algs4
if [[ -d "$HOME/algs4" ]]; then
  export CLASSPATH="$CLASSPATH:$HOME/algs4/stdlib.jar:$HOME/algs4/algs4.jar"
  export PATH="$PATH:$HOME/algs4/bin"
fi

# Android
if [[ -d "$HOME/Library/Android/sdk" ]]; then
  export ANDROID_HOME="$HOME/Library/Android/sdk"
  export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
fi

# C
export CFLAGS="-g3 -Wall -O3 -std=c11 $CFLAGS"

# C++
export CXXFLAGS="-g3 -Wall -O3 -std=c++1y $CXXFLAGS"

# cabal
if [[ -d "$HOME/Library/Haskell/bin" ]]; then
  export PATH="$HOME/Library/Haskell/bin:$PATH"
fi

# gvm
if [[ -s "$HOME/.gvm/bin/gvm-init.sh" ]]; then
  source "$HOME/.gvm/bin/gvm-init.sh"
fi

# Java
if [[ -x "/usr/libexec/java_home" && -d $(/usr/libexec/java_home) ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home)"
  export JDK_HOME="$JAVA_HOME"
  export PATH="$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH"
fi

# nvm
if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
  source "$HOME/.nvm/nvm.sh"
fi

# rbenv
if [[ -s "$HOME/.rbenv/bin" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# virtualenvwrapper
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# z
if [[ -s "$HOME/.z.sh" ]]; then
  source ~/.z.sh
fi

# zsh_aliases
if [[ -s "$HOME/.zsh_aliases" ]]; then
  source $HOME/.zsh_aliases
fi

# postgres
export PGDATA="/usr/local/var/postgres"
