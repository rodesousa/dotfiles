autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt prompt_subst
PROMPT='%n@%m:%F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f$ '
