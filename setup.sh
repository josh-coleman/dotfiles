if [ $SPIN ]; then
  alias setup_core='git pull && update && bin/rake dev:create_apps && restart'
  alias setup_web='git pull && update && restart'
fi
