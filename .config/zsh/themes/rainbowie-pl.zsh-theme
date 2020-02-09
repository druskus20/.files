# Druskus rainbow-like zsh theme
# Features: 
# 	- Last command status indicator
#	- Git indicator
#
# Requirements:
# 	- nerd-fonts: \ue702 for the git symbol


# This allows expansions
setopt prompt_subst

# This part is for the virtualenv indicator
export VIRTUAL_ENV_DISABLE_PROMPT=yes

function virtenv_indicator {
    if [[ -z $VIRTUAL_ENV ]] then
        psvar[1]=''
    else
        psvar[1]="${VIRTUAL_ENV##*/}"
    fi
}


# Powerline icons:
# 






# !!! does not reset on zsh re-login (typing zsh).
# need to fix it in zshrc or something

autoload -Uz add-zsh-hook
#add-zsh-hook precmd my_set_prompt

add-zsh-hook precmd virtenv_indicator


# This needs to be in simple quotes
# https://unix.stackexchange.com/questions/32124/set-variables-in-zsh-precmd-and-reference-them-in-the-prompt
PROMPT='%(1V.(%1v) .)'

PROMPT+='%(?:%B%F{green}✓:%B%F{red}✕)%f%b ' # ✓ or ✕ depending on last command 
PROMPT+='%B%F{red}[%B%F{yellow}%n%B%F{green}@%B%F{blue}%m%f%b %B%F{magenta}%2.%f%b' # [user@host path
PROMPT+='$(git rev-parse --is-inside-work-tree &>/dev/null && echo "  ")' # git symbol, if inside a repo
PROMPT+='%B%F{red}]%f%b ➜ ' # ] ➜ 




PROMPT='%B'
PROMPT+='%F{black}%(?:%K{green} ✓%F{green}%K{yellow}:%K{red} ✕%F{red}%K{yellow})'
PROMPT+='%F{black}%n'
PROMPT+='%F{yellow}%K{blue}'
PROMPT+='%F{black}%m'
PROMPT+='%F{blue}%K{magenta}'
PROMPT+='%F{black}%K{magenta}%2.'
PROMPT+='$(git rev-parse --is-inside-work-tree &>/dev/null && echo "  ")'
PROMPT+='%F{magenta}'
PROMPT+='%k%b%f '





















# Deprecated syntax
# PROMPT='%(?:%{$fg_bold[green]%}✓:%{$fg_bold[red]%}✕) '
# PROMPT+='%{$fg_bold[red]%}[%{$fg_bold[yellow]%}%n%{$fg_bold[green]%}@%{$fg_bold[blue]%}%m %{$fg_bold[magenta]%}%2.%{$reset_color%}'
# PROMPT+='$(git rev-parse --is-inside-work-tree &>/dev/null && echo " \ue0a0")'
# PROMPT+='%{$fg_bold[red]%}]%{$reset_color%} ➜ '


# To do: 
# 1) Use git-status because its very fast compared with the default one
# source ~/gitstatus/gitstatus.plugin.zsh

#function my_set_prompt() {
#  PROMPT='%~# '
#  RPROMPT=''

#  if gitstatus_query MY && [[ $VCS_STATUS_RESULT == ok-sync ]]; then
#    RPROMPT=${${VCS_STATUS_LOCAL_BRANCH:-@${VCS_STATUS_COMMIT}}//\%/%%}  # escape %
#    [[ $VCS_STATUS_HAS_STAGED    == 1 ]] && RPROMPT+='+'
#    [[ $VCS_STATUS_HAS_UNSTAGED  == 1 ]] && RPROMPT+='!'
#    [[ $VCS_STATUS_HAS_UNTRACKED == 1 ]] && RPROMPT+='?'
#  fi

#  setopt noprompt{bang,subst} promptpercent  # enable/disable correct prompt expansions
#}

#gitstatus_stop MY && gitstatus_start MY
#autoload -Uz add-zsh-hook
#add-zsh-hook precmd my_set_prompt
