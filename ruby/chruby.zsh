case $OSTYPE in
  *"darwin"*)
    chruby_dir=/usr/local/opt/chruby/share/chruby
    ;;
  *"linux"*)
    chruby_dir=/usr/local/share/chruby
    ;;
esac

if [ -e  $chruby_dir ]
then
  source "$chruby_dir/chruby.sh"
  source "$chruby_dir/auto.sh"
fi
