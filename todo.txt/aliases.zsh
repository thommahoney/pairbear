# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() { 
	if [ $# -eq 0 ]; then
		ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh ls"
	else
		VAR=$1
		shift
		if [ "$VAR" = "p" -o "$VAR" = "app" ]; then
			ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh $VAR $* "
		else
			ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh $VAR \"$*\" "
		fi
	fi
}

function tn() {
	t app $1 +next
}

alias n="t ls +next"
alias tt="t ls +tix"
alias tw="t ls +work"
alias td="t do "
alias ta="t ls '(A)'"
alias tb="t ls '(B)'"
alias tc="t ls '(C)'"
