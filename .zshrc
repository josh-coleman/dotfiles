alias setup_core='git pull && update && bin/rake dev:create_apps && echo "Shop.first.beta.enable(:inbox_in_admin)" | bin/rails c && restart'
alias setup_web='git pull && update && restart'
