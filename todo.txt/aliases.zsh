# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() { 
  if [ $# -eq 0 ]; then
    ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh ls"
  else
    ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh $*"
  fi
}

function tn() {
  todo.sh app $1 +next
}

alias n="t ls +next"
alias td="t do "
alias ta="t ls '(A)'"
alias tb="t ls '(B)'"
alias tv="t ls '(C)'"
