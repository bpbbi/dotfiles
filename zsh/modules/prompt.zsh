# Prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
# NEWLINE=$'\n'
zstyle ':vcs_info:git:*' formats '%F{#55dddd}%S%f %r%F{#55dddd}%f%F{#10eb0d}%b%f %m%u%c%a'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'    # string for %c
zstyle ':vcs_info:git:*' unstagedstr '-'  # string for %u

precmd_functions+=( precmd_vcs_info )
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
#PROMPT='$(print_dot) $(print_path) %# '

add_path() {
    local cpath
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        cpath="$vcs_info_msg_0_"
    else
        cpath='%F{#55dddd}%~%f'
    fi
    echo $cpath
}

add_dot() { 
    local error_indicator
    local error_code=$1
    if [[ $error_code != 0 ]]; then
       error_indicator='%F{#ebabab}●%f'
    else
       error_indicator='%F{#60ed0d}●%f'
    fi
    echo $error_indicator
}

set_exit_code() {
    local error_code=$1
    if [[ $error_code != 0 ]]; then
        echo "$error_code"
    fi
}

set_prompt() {
    RPROMPT='%F{#ebabab}$(set_exit_code $?)%f'
    PROMPT='$(add_dot $?) $(add_path) %# '
}

set_prompt
