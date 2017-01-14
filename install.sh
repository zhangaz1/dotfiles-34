# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install brew & stuff
. "$DOTFILES_DIR/brew.sh"

# Make zsh default shell
sudo chsh -s $(which zsh)

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.functions" ~
ln -sfv "$DOTFILES_DIR/dots/.extra" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.inputrc" ~
ln -sfv "$DOTFILES_DIR/dots/.bash_profile" ~

# Setup macos defaults and add apps to dock
. "$DOTFILES_DIR/macos/defaults.sh"

# Copy sublime settings
cp "$DOTFILES_DIR/editors/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
cp "$DOTFILES_DIR/editors/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

# Clear cache
. "$DOTFILES_DIR/bin/dotfiles" clean