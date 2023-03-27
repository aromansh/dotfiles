function fish_right_prompt
    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l green (set_color -o green)
    set -l blue (set_color -o blue)
    set -l orange (set_color -o ffa500)
    set -l purple (set_color -o b16286)
    set -l normal (set_color normal)
    set -l time $cyan'('(echo -n (date +%H:%M))')'

    echo -n -s  ' '$time' '
end
