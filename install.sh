#/bin/sh

# backup current vim directory
if [ -d ~/.vim ]; then
  rm -rf ~/vim_backup
  mv ~/.vim ~/vim_backup
  echo "Created vim plugins backup"
fi

# install pathogen
mkdir ~/.vim

cd ~/.vim

git clone git://github.com/tpope/vim-pathogen.git

mv vim-pathogen/autoload ~/.vim/autoload

# plugin directory
mkdir ~/.vim/bundle

# cleanup
rm -rf vim-pathogen

# update .vimrc
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/vimrc.bak
  echo "Created vimrc backup"
fi
touch .vimrc
echo "call pathogen#runtime_append_all_bundles()" >> ~/.vimrc
echo "call pathogen#helptags()" >> ~/.vimrc

# download plugins
git clone git://github.com/vim-scripts/supertab.git bundle/supertab
