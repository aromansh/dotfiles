if status is-interactive
    set PATH "/opt/homebrew/bin" $PATH
    fnm env | source
end

set PATH "$HOME/.local/bin" $PATH
