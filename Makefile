DOTFILE_PATH := $(shell pwd)

install:
	ZSH="$HOME/.dotfiles/oh-my-zsh" sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/VundleVim/Vundle.vim.git $DOTFILE_PATH/.vundle
