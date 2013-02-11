if [ -d ~/vim_backup ]; then
  rm -rf ~/.vim
  mv ~/vim_backup ~/.vim
  echo "Restored vim plugins"
fi

if [ -f ~/vimrc.bak ]; then
  mv ~/vimrc.bak ~/.vimrc
  echo "Restored vimrc"
fi
