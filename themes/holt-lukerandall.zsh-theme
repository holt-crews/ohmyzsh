#! /usr/bin/bash
# ZSH Theme - Preview: https://cl.ly/f701d00760f8059e06dc
# Thanks to gallifrey, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg_bold[green]%}%2~%{$reset_color%}$(git_prompt_info)%{$reset_color%}%B»%b '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"

