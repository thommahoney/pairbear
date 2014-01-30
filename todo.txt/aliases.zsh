# todo.sh: https://github.com/ginatrapani/todo.txt-cli

LOCAL=true

function t() { 
	if $LOCAL; then
		case $OSTYPE in
		*"darwin"*)
			t-local-darwin $*
			;;
		*"linux"*)
			t-local-linux $*
			;;
		esac
	else
		t-ssh $*
	fi
}

function t-ssh() { 
	if [ $# -eq 0 ]; then
		ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh ls"
	else
		VAR=$1
		shift
		if [ "$VAR" = "pri" -o "$VAR" = "app" ]; then
			ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh $VAR $* "
		else
			ssh -qt tommy@goatorboat.com "/usr/local/todo.txt-cli/todo.sh $VAR \"$*\" "
		fi
	fi
}

function t-local-darwin() { 
	local binary=$(brew list todo-txt | sed -n 2p)
	if [ $# -eq 0 ]; then
		$binary ls
	else
		VAR=$1
		shift
		if [ "$VAR" = "pri" -o "$VAR" = "app" ]; then
			$binary $VAR $*
		else
			$binary $VAR "$*"
		fi
	fi
}

function t-local-linux() { 
	if [ $# -eq 0 ]; then
		/usr/local/todo.txt-cli/todo.sh ls
	else
		VAR=$1
		shift
		if [ "$VAR" = "pri" -o "$VAR" = "app" ]; then
			/usr/local/todo.txt-cli/todo.sh $VAR $*
		else
			/usr/local/todo.txt-cli/todo.sh $VAR "$*"
		fi
	fi
}

function tn() {
	t app $1 +next
}
function tt() {
	t app $1 +today
}
function tw() {
	t app $1 +week
}
function taa() {
	t pri $1 'A'
}
function tbb() {
	t pri $1 'B'
}
function tcc() {
	t pri $1 'C'
}
function tz() {
	t pri $2 $1
}

alias n="t ls +next"
alias today="t ls +today"
alias week="t ls +week"
alias td="t do "
alias ta="t ls '(A)'"
alias tb="t ls '(B)'"
alias tc="t ls '(C)'"
alias tx="t dp " #deprioritie

