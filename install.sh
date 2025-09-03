cp -R .config ~
cp .ideavimrc ~
cp .vimrc ~
cp .zshrc ~

# tmux
cp .tmux.conf ~
if [ ! -d ~/.tmux ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo run tmux and prefix + I for install tpm plugins 
fi
