#/bin/sh

# backup current vim directory
if [ -d ~/.vim ]; then
  rm -rf ~/vim_backup
  mv ~/.vim ~/vim_backup
  echo "Created vim plugins backup"
fi

# backup .vimrc
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/vimrc.bak
  echo "Created vimrc backup"
fi

# ctrl-s fix for bash
cp ~/.bash_profile ~/bash_profile.bak
echo "bind -r '\C-s'" >> ~/.bash_profile
echo "stty -ixon" >> ~/.bash_profile

# copy .vimrc
cp $(dirname $0)/.vimrc ~/

# install pathogen
mkdir ~/.vim

cd ~/.vim

git clone git://github.com/tpope/vim-pathogen.git

mv vim-pathogen/autoload ~/.vim/autoload

# plugin directory
mkdir ~/.vim/bundle

# cleanup
rm -rf vim-pathogen

# supertab
git clone git://github.com/ervandew/supertab.git bundle/supertab

# nerdtree
git clone git://github.com/scrooloose/nerdtree.git bundle/nerdtree

# nerdtree tabs
git clone https://github.com/jistr/vim-nerdtree-tabs.git bundle/vim-nerdtree-tabs

# nerdcommenter
git clone git://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter

# vim-rails
git clone git://github.com/tpope/vim-rails.git bundle/vim-rails

# delimitMate
git clone git://github.com/Raimondi/delimitMate.git bundle/delimitMate

# snipMate
git clone git://github.com/msanders/snipmate.vim.git bundle/snipmate

# syntastic
git clone git://github.com/scrooloose/syntastic.git bundle/syntastic

