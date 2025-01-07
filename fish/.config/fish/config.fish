if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim=nvim
alias v=nvim
#alias mutt=neomutt
#alias m=neomutt
#alias o=offlineimap
#alias om="o&&m"

alias ga="git add"
alias gaa="git add ."
alias gap="git add -p"
alias gs="git status"
alias gl="git lg"
alias gc="git commit"
alias gcv="git commit -v"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"

# Disable greeting
set fish_greeting

# Set default node version
# See: https://github.com/jorgebucaran/nvm.fish#nvm_default_version
set -u nvm_default_version lts

# Vim FZF
set -gx FZF_DEFAULT_OPTS '--reverse'

# Vim rg
set -gx RIPGREP_CONFIG_PATH "$HOME/.dotfiles/ripgrep/ripgreprc"

# fnm - Macbook pro
set PATH "/Users/alejandro/Library/Application Support/fnm" $PATH
fnm env | source

# Haystack (commenting as instructed in https://webostv.developer.lge.com/develop/tools/removal-of-old-webos-tv-sdk)
#set LG_WEBOS_TV_SDK_HOME "/Users/alejandro/.bin/webos-cli"
#set WEBOS_CLI_TV "$LG_WEBOS_TV_SDK_HOME/CLI/bin"
#set PATH $PATH $WEBOS_CLI_TV
