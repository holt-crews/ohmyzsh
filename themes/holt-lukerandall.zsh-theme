#! /usr/bin/bash
# ZSH Theme - Preview: https://cl.ly/f701d00760f8059e06dc
# Thanks to gallifrey, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"


local python_env_dir="$CONDA_DEFAULT_ENV"

function virtualenv_info { 
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='%{$fg_bold[green]%}%n %{$fg_bold[blue]%}%2~%{$reset_color%}$(git_prompt_info)%{$reset_color%}%B»%b '
RPS1="%{$fg_bold[blue]%}${virtualenv_info}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[white]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"


# taken from simple theme:
# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~$(git_prompt_info)%{$reset_color%} '
#
# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
# ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
