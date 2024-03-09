# -*- mode: sh; sh-shell: bash -*-
# vim:ft=sh:

# /bin/echo -e '\033[1;32mIn .bash/interactive.d/vterm.bash\033[0m'

if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    vterm_prompt_end(){
        vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
    }
    PS1=$PS1'\[$(vterm_prompt_end)\]'
fi
