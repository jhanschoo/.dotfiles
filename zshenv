case "$(uname -s)" in
  Linux*)     machine=Linux;;
  Darwin*)    machine=Darwin;;
  CYGWIN*)    machine=Cygwin;;
  MINGW*)     machine=MinGw;;
  *)          machine="UNKNOWN:$(uname -s)"
esac

# Change PATH to that of system
if [[ -x /usr/libexec/path_helper ]]; then
	eval $(/usr/libexec/path_helper -s)
fi

# Add local sbin directory to PATH
export "PATH=/usr/local/sbin:$PATH"

# Add user bin directories to PATH
export "PATH=$HOME/bin:$PATH"
#export MANPATH="/usr/local/man:$MANPATH"

# Android
if [[ -d "${HOME}/Library/Android/sdk" ]]; then
    export ANDROID_HOME="${HOME}/Library/Android/sdk"
    export PATH="${ANDROID_HOME}/tools:$ANDROID_HOME/platform-tools:$PATH"
fi

# asdf
if [[ -d "${HOME}/.asdf" ]]; then
  export ASDF_DIR="${HOME}/.asdf"
  export PATH="${ASDF_DIR}/bin:${ASDF_DIR}/shims:$PATH"
  autoload -U bashcompinit
  bashcompinit
fi

# cabal
if [[ -d "$HOME/Library/Haskell/bin" ]]; then
    export PATH="$HOME/Library/Haskell/bin:$PATH"
fi

# php composer
if [[ -d "$HOME/.composer/vendor/bin" ]]; then
    export PATH="$HOME/.composer/vendor/bin:$PATH"
fi

# AFDKO
if [[ -d "$HOME/bin/FDK" && machine = "Darwin" ]]; then
  FDK_EXE="$HOME/bin/FDK/Tools/osx"
  PATH="$PATH:$HOME/bin/FDK/Tools/osx"
fi

# Java
if [[ -x "/usr/libexec/java_home" && -d $(/usr/libexec/java_home) ]]; then
    export JAVA_HOME="$(/usr/libexec/java_home)"
    export JDK_HOME="$JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH"
fi

# phpbrew
if [[ -s "$HOME/.phpbrew/zshrc" ]]; then
    #export PHPBREW_SET_PROMPT=1
    #export PHPBREW_RC_ENABLE=1
    source "$HOME/.phpbrew/zshrc"
fi

# postgres
export PGDATA="/usr/local/var/postgres"

# racket
export RACKET_HOME="/Applications/Racket v6.10"
if [[ -d "$RACKET_HOME" ]]; then
    export PATH="$RACKET_HOME/bin:$PATH"
fi

# sdkman
if [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
    export SDKMAN_DIR="/Users/jhanschoo/.sdkman"
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# TeXLive
if [[ -d "/Library/TeX/texbin" ]]; then
    export PATH="/Library/TeX/texbin:$PATH"
fi

# virtualenvwrapper
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
    export VIRTUALENVWRAPPER_PYTHON=$(which python3)
    export VIRTUALENV_PYTHON=$(which python3)
    export PROJECT_HOME="$HOME/Documents"
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

# workaround for /etc/profile resetting paths
export ZSHENV_SET_PATH="$PATH"
