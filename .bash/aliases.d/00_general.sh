alias _="sudo"
alias E="_ -e"
alias q="exit"

# Install https://github.com/trapd00r/ls-- and be happy.
if [ -x "$(which ls++ 2>/dev/null)" ]; then
  alias l="ls++"
  alias ll="ls++ -ll"
  alias la="ls++ -lla"
else
  alias l="ls -A --color=auto"
  alias ll="ls -lA --color=auto"
  alias lt="ls -ltrA --color=auto"
  alias la="ls -la --color=auto"
fi

alias ..="cd .."
alias ...="cd ../../"
alias ~="cd \$HOME"

alias irc="weechat"
alias resrc="source ~/.bashrc"

alias :wq="echo You\'re not in Vim\!"
alias :q="exit"
alias :e="${EDITOR}"

alias mk="make"
alias pkg-config-search="pkg-config --list-all | grep"
alias make_ssh_key="ssh-keygen -o -a 1024 -b 16384 -t ed25519"
