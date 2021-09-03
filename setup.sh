# These will only be executed on spin
if [ $SPIN ]; then
  # Remove old configuration
  mv ~/.zshrc ~/.zshrc.old

  # Link Zsh config
  ln -sf ~/dotfiles/.zshrc ~/.zshrc

  # Reload zsh config
  source ~/.zshrc
fi
