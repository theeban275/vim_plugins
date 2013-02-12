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
echo "filetype plugin on"
echo "syntax on" >> ~/.vimrc


# supertab
git clone git://github.com/ervandew/supertab.git bundle/supertab

# nerdtree
git clone git://github.com/scrooloose/nerdtree.git bundle/nerdtree

# nerdcommenter
git clone git://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter

# vim-rails
git clone git://github.com/tpope/vim-rails.git bundle/vim-rails

# delimitMate
git clone git://github.com/Raimondi/delimitMate.git bundle/delimitMate

# tagbar
git clone git://github.com/majutsushi/tagbar.git bundle/tagbar

# snipMate
git clone git://github.com/msanders/snipmate.vim.git bundle/snipmate

# syntastic
git clone git://github.com/scrooloose/syntastic.git bundle/syntastic
