# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme agnoster

set fish_plugins autojump bundler brew django node rbenv python

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

alias gf=git-flex
alias gfh="git-flex hotfix"
alias gff="git-flex feature"

function branch
    git status | head -1 | awk -F' ' '{print $4}'
end

function gfh
    git-flex hotfix
end

function gff
    git-flex feature
end

alias gpo="git push --set-upstream origin (branch)"

function hr
    for i in (seq 1 (tput cols))
        echo -n ' '
    end
    for i in (seq 1 (tput cols))
        echo -n '━'
    end
    for i in (seq 1 (tput cols))
        echo -n ' '
    end
end
        
