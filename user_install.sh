#! /bin/bash

# Setup vim stuff
mkdir -p ~/.vim

# Install some vim plugins
cd ~/.vim
wget -O nerd_tree.zip http://www.vim.org/scripts/download_script.php?src_id=10767
unzip nerd_tree.zip
rm nerd_tree.zip

# Add postgresql ppa repo  
# sudo add-apt-repository ppa:pitti/postgresql 
