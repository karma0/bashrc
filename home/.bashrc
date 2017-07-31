# If we not interactive, don't do shit.
case $- in
    *i*) ;;
      *) return;;
esac

# Load in the system's base bashrc file.
[ -e "/etc/bash.bashrc" ] && source /etc/bash.bashrc
[ -e "/etc/bashrc" ] && source /etc/bashrc

# Load in the base 'plugin' for the shell.
source "$HOME/.bash/base.sh"

_jalcine_fullinit

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
