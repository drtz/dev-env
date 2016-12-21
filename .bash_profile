alias secret="pbpaste | base64 | pbcopy"
alias desecret="pbpaste | base64 -D"
alias omgdb="docker exec -ti omg_db_1 mysql"
alias vi=vim

export EDITOR=/usr/local/bin/vim

export GOROOT=/usr/local/go
export GOPATH=$HOME/workspace/go
export GOOMG=$GOPATH/src/github.com/OrderMyGear
export GO15VENDOREXPERIMENT=1

export PATH=$PATH:${HOME}/bin:/usr/local/mysql/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/CMake.app/Contents/bin
export PATH=${HOME}/node/bin:$PATH
export PATH=${HOME}/Library/Android/sdk/platform-tools/:$PATH

export PS1="\W$ "

# The next line updates PATH for the Google Cloud SDK.
test -e "${HOME}/google-cloud-sdk/path.bash.inc" && source "${HOME}/google-cloud-sdk/path.bash.inc"

# The next line enables shell command completion for gcloud.
test -e "${HOME}/google-cloud-sdk/completion.bash.inc" && source "${HOME}/google-cloud-sdk/completion.bash.inc"

######################################
# iTerm tab titles
# https://gist.github.com/drtz/3860e19057302604655b
get_git_root() {
    basename $(git rev-parse --show-toplevel 2> /dev/null) 2> /dev/null
}
get_prompt() {
    GIT_ROOT=$(get_git_root)

    if [ -n "$GIT_ROOT" ]; then
        echo $GIT_ROOT;
    else
        echo "${PWD##*/}";
    fi
}
if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];$(get_prompt;)\007"; ':"$PROMPT_COMMAND"
fi
# end iTerm tab titles
######################################

goomg () { cd $GOPATH/src/github.com/OrderMyGear/$@; }
gomg () { cd $GOPATH/src/github.com/OrderMyGear/$@; }

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
