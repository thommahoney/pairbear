#huddler aliases for huddler things

alias imp='ssh -p 880 tom@import001.huddler.com '
alias util='ssh -p 880 tom@utility001.huddler.com '
alias wordp='ssh -p 880 tom@wordpress001.huddler.com '
alias newdy='ssh tom@newdy.huddler.com '
alias rudy='ssh tom@rudy.huddler.com '
alias imp='ssh -p880 tom@import001.huddler.com '
alias imp2='ssh -p880 tom@import002.huddler.com '

function ap {
	if [ $@ -gt 9 ]; then
		ssh -p 880 tom@app0$@.huddler.com 
	else
		ssh -p 880 tom@app00$@.huddler.com 
	fi
}
function db {
	if [ $@ -gt 9 ]; then
		ssh -p 880 tom@db0$@.huddler.com 
	else
		ssh -p 880 tom@db00$@.huddler.com 
	fi
}


