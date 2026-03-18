# Set default node version
# See: https://github.com/jorgebucaran/nvm.fish#nvm_default_version
set -u nvm_default_version lts

if status is-interactive
    # Disable greeting
    set fish_greeting

    # Vim FZF
    set -gx FZF_DEFAULT_OPTS '--reverse'

    # Ripgrep config (used by Neovim plugins as well)
    set -gx RIPGREP_CONFIG_PATH "$HOME/.dotfiles/ripgrep/ripgreprc"

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
    alias now='LC_TIME=de_DE.UTF-8 date "+%I:%M%p • %A %d %B"' # Output: 02:30PM • Donnerstag 10 Juli
end

# Load the current device configuration
if test -e ~/.device
    set --local DEVICE (cat ~/.device | string trim)
    set --local DEVICE_FISH_CONFIG_FILE_PATH ~/.config/fish/$DEVICE.fish

    if test -e $DEVICE_FISH_CONFIG_FILE_PATH
        source $DEVICE_FISH_CONFIG_FILE_PATH
    end
end

# fnm
set PATH "$HOME/.local/share/fnm" $PATH
fnm env | source
