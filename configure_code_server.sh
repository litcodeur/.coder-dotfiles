./install_extensions.sh true

cp ./keybindings.json ~/.local/share/code-server/User/keybindings.json
cp ./settings.json ~/.local/share/code-server/User/settings.json
ln -s ~/.local/share/code-server/User/keybindings.json ~/.dotfiles/VSCode/keybindings.json 
ln -s ~/.local/share/code-server/User/settings.json ~/.dotfiles/VSCode/settings.json 