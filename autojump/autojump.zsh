case $OSTYPE in
  *"darwin"*)
    [[ -e `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
    ;;
  *"linux"*)
    [[ -e /usr/share/autojump/autojump.sh ]] && . /usr/share/autojump/autojump.sh
    ;;
esac
