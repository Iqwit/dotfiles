# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$HOME/scripts:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"
alias icat="kitten icat"

PROMPT_COMMAND='ADD=$(~/scripts/add.sh)'
PS1='╭──$ADD\[\e[38;5;231;48;5;62m\]  \[\e[38;5;62;48;5;167m\]\[\e[38;5;231;48;5;167m\] 󰄛 \[\e[38;5;167;48;5;218m\]\[\e[0;48;5;218m\] \[\e[38;5;231;48;5;218m\]\W\[\e[0;48;5;218m\] \[\e[0;38;5;218m\] \[\e[0m\]\n╰─ '
alias rg="rg --hyperlink-format=kitty"
alias ff="fastfetch"
cowsay -f cat "$(($(date "+%Y") + 1)): Year of the linux desktop?"
