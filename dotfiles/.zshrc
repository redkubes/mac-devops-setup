# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/local/bin:$PATH

ZSH_THEME="robbyrussell"

plugins=(brew bundler colorize
  dirhistory docker git git-extras git-flow github
  kubectl last-working-dir npm nvm osx python
  tmux vagrant xcode)

source "$ZSH"/oh-my-zsh.sh

PROMPT='# '
# RPROMPT='$(kube_ps1)'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.aliases
source ~/.iterm2_shell_integration.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export PATH="/usr/local/opt/helm@2/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.krew/bin"
export PATH="$PATH:$HOME/.rvm/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

source "$HOME"/.iterm2_shell_integration.zsh
iterm2_print_user_vars() {
  KUBECONTEXT=$(
    CTX=$(kubectl config current-context) 2>/dev/null
    [ $? -eq 0 ] && echo "⎈ $CTX"
    [ $? -ne 0 ] && echo "⎈ n/a"
  )
  iterm2_set_user_var otomiEnvDir $(echo "ENV_DIR=${ENV_DIR:-'n/a'}")
  iterm2_set_user_var kubeContext "$KUBECONTEXT"
}

export GPG_TTY=$(tty)
export EDITOR="code"
export KUBE_EDITOR="code -w"
# But vim for anything else
export EDITOR_ALT="vim"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
