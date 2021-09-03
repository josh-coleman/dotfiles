if [ $SPIN ]; 
then
  
  # Core
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    echo "Dotfile executing updates for core"
    cd /src/github.com/shopify/shopify && bin/rake dev:create_apps && restart
  fi
  
  # Web
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/web" ]]
  then
    echo "Dotfile executing updates for web"
    cd /src/github.com/shopify/web && restart
  fi
  
  # Shopify Chat
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify_chat" ]]
  then
    echo "Dotfile executing updates for shopify_chat"
    cd /src/github.com/shopify/shopify_chat && git pull
  fi
fi
