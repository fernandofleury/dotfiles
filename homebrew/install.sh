# Install Homebrew
if ! type "brew" > /dev/null; then
  info "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  success "Homebrew installed"
fi

if ! type "brew" > /dev/null; then
  fail "Failed to install Homebrew. Aborting"
fi

brew bundle --file ./dependencies

success "Homebrew and dependencies successfully installed"

exit
