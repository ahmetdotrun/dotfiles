#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# GPG needs to know the active TTY
export GPG_TTY="$(tty)"

# Source modular shell configuration
for f in ~/.env.local ~/.paths ~/.functions; do
    [ -f "$f" ] && . "$f"
done

# Interactive shell tools
eval "$(fzf --bash)"
eval "$(zoxide init bash)"

# Prompt
eval "$(starship init bash)"
