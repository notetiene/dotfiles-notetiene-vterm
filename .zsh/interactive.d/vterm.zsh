# -*- mode: sh; sh-shell: zsh -*-
# vim:ft=sh:

# /bin/echo -e '\033[1;32mIn .zsh/interactive.d/vterm.zsh\033[0m'

if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    vterm_prompt_end() {
        vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
    }
    setopt PROMPT_SUBST
    PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
fi
