# I should probably restructure this as a plugin of some kind.
#
function vmfusionlist() {
  /Library/Application\ Support/VMware\ Fusion/vmrun list | awk 'BEGIN { ORS=" " ; FS="/" }  { if (NR>1) {print $NF} }'
}

PROMPT=$'%{$fg[red]%}┌[%{$fg_bold[grey]%}%n@%m%{$reset_color%}%{$fg[red]%}] [%{$fg_bold[grey]%} $(vmfusionlist)%{$reset_color%}%{$fg[red]%}] %{$(git_prompt_info)%}%(?,,%{$fg[red]%}[%{$fg_bold[white]%}%?%{$reset_color%}%{$fg[red]%}])
%{$fg[red]%}└[%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[red]%}]>%{$reset_color%} '
PS2=$' %{$fg[red]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"


