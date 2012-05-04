# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() { 
  if [ $# -eq 0 ]; then
    todo.sh ls
  else
    todo.sh $*
  fi
}

alias n="t ls +next"
alias td="t do "
alias ta="t ls '(A)'"
alias tb="t ls '(B)'"
alias tv="t ls '(C)'"
