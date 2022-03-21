#PROMPT='%{$fg[yellow]%}λ %n %{$fg[green]%}%c $(git_prompt_info)%{$fg[yellow]%}→ %{$reset_color%}'
#RPROMPT='%{$fg[blue]%}(%D{%H:%M:%S})%{$reset_color%}'
PROMPT='%{$FG[214]%}λ %n %{$FG[075]%}%c $(git_prompt_info)%{$FG[202]%}→ %{$reset_color%}'
RPROMPT='%{$FG[148]%}(%D{%H:%M:%S})%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
