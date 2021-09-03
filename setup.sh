if [ $SPIN ]; 
then
  
  # Core
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    echo 'Dotfile executing updates for core'
    'git pull && update && bin/rake dev:create_apps && restart'
  fi
  
  # Web
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/web" ]]
  then
    echo 'Dotfile executing updates for web'
    'git pull && update && restart'
  fi
  
  # Shopify Chat
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify_chat" ]]
  then
    echo 'Dotfile executing updates for shopify_chat'
    'git pull'
  fi
fi
