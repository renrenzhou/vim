#!/bin/sh
current_path=$(cd $(dirname $0);pwd)
if [ ! -d $current_path/old ];then
echo "creating dir $current_path/old"
mkdir $current_path/old
fi

if [ -f ~/.vimrc ];then
new_file=`date +"%Y%m%d_%H%M%S"`
echo "file ~/.vimrc exists; mv@ $new_file"
mv ~/.vimrc $current_path/old/vimrc_$new_file
fi

if [ -d ~/.vim ];then
new_file=`date +"%Y%m%d_%H%M%S"`
echo "file ~/.vim exists; mv@ $new_file"
mv  ~/.vim $current_path/old/vim_$new_file
fi

echo "creating new linking ~/.vimrc and ~/.vim"
ln -s $current_path/vimrc ~/.vimrc
ln -s $current_path/vimfiles ~/.vim
