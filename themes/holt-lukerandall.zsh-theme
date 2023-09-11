#! /usr/bin/bash
# ZSH Theme - Preview: https://cl.ly/f701d00760f8059e06dc
# Thanks to gallifrey, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='%{$fg_bold[green]%}%n %{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"


# taken from simple theme:
# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~$(git_prompt_info)%{$reset_color%} '
#
# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
# ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
