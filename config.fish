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

function branch
    git status | head -1 | awk -F' ' '{print $4}'
end

function gfh
    git-flex hotfix $argv
end

function gff
    git-flex feature $argv
end

function gtag
    git tag $argv
    git push origin --tags
end

function gdtag
    git tag -d $argv
    git push origin :refs/tags/$argv
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
        
function opub
    rake generate & rake deploy
end
