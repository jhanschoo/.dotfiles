# Add user bin directories to PATH
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# Android
if [[ -d "$HOME/Library/Android/sdk" ]]; then
    export ANDROID_HOME="$HOME/Library/Android/sdk"
    export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
fi

# cabal
if [[ -d "$HOME/Library/Haskell/bin" ]]; then
    export PATH="$HOME/Library/Haskell/bin:$PATH"
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

# postgres
export PGDATA="/usr/local/var/postgres"


# rbenv
if [[ -s "$HOME/.rbenv/bin" ]]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [[ -d "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
    export SDKMAN_DIR="/Users/jhanschoo/.sdkman"
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# TeXLive
if [[ -d "/Library/TeX/texbin" ]]; then
    export PATH="/Library/TeX/texbin:$PATH"
fi

# virtualenvwrapper
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
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
