Dot Files!
==========

Everyone loves their personal configuration. I'm no different.

Steps to reproduce my environment:

    git clone https://github.com/astrails/dotvim .vim
    ln -s .vim/vimrc .vimrc
    cd .vim && make install

    git clone https://github.com/powellc/dotfiles
    cp -r dotfiles/* ~/

    # Mac steps
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew install fish
    chsh /usr/local/bin/fish

    # Linux steps
    sudo aptitude install fish
    chsh /usr/bin/fish
