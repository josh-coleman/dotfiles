if [ $SPIN ]; 
then
  
  # Core
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    'git pull && update && bin/rake dev:create_apps && restart'
  fi
  
  # Web
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/web" ]]
  then
    'git pull && update && restart'
  fi
  
  # Shopify Chat
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify_chat" ]]
  then
    'git pull'
  fi
fi
