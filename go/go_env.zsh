case $OSTYPE in
*"darwin"*)
	#export GOVERSION="1.2.1"
	#export GOROOT="$(brew --prefix)"/Cellar/go/$GOVERSION
	export GOPATH=$PROJECTS/gocode
	export PATH=$PATH:$GOROOT/bin:${GOPATH//://bin:}/bin
	;;
*"linux"*)
	export GOPATH=$HOME/workspace/go
	export GOROOT=/usr/local/go
	export PATH=$PATH:$GOROOT/bin:${GOPATH//://bin:}/bin
	;;
esac
