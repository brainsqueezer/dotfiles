 DOTPATH=/home/rap/Dropbox/misc/dotfiles
 
 
 rm ~/.bashrc
 ln -s $DOTPATH/bashrc ~/.bashrc
 rm ~/.gitignore
 ln -s $DOTPATH/gitignore ~/.gitignore
 rm ~/.vimrc
 ln -s $DOTPATH/vimrc ~/.vimrc


git config --global user.name "Ramon Antonio Parada"
git config --global user.email "ramon@bigpress.net"

echo Remember to setup github token
git config --global github.user brainsqueezer
#git config --global github.token 0123456789yourf0123456789token
git config --global core.excludesfile ~/.gitignore
