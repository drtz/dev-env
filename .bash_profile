alias secret="pbpaste | base64 | pbcopy"
alias desecret="pbpaste | base64 -D"
alias omgdb="docker exec -ti omg_db_1 mysql"
#alias docker="gcloud docker --"
#alias docker-compose='docker run -v /var/run/docker.sock:/var/run/docker.sock -v "$PWD:/rootfs/$PWD" -w="/rootfs/$PWD" docker/compose:1.13.0'
#alias docker-login='docker login -u oauth2accesstoken -p "$(gcloud auth application-default print-access-token)" https://gcr.io'
alias vi=vim
alias gsql='gcloud sql connect --project omg-staging-env staging'

export EDITOR=/usr/local/bin/vim

export GOROOT=/usr/local/opt/go@1.9/libexec
export GOPATH=$HOME/workspace/go
export GOOMG=$GOPATH/src/github.com/OrderMyGear

export PAYMENT_DSN="root:root@tcp(localhost:3306)/payment?charset=utf8&parseTime=true"
export JWT_PUBLIC_KEY="-----BEGIN PUBLIC KEY-----
....
-----END PUBLIC KEY-----"
export USER_SERVICE_ADDR="http://localhost:10002"
export USER_SERVICE_TOKEN=""
export STRIPE_SECRET_KEY=""

export PATH=$PATH:${HOME}/bin:/usr/local/mysql/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/CMake.app/Contents/bin
export PATH=${HOME}/node/bin:$PATH
export PATH=${HOME}/.npm-global/bin:$PATH
export PATH=${HOME}/workspace/dev-cluster/scripts:$PATH

export PATH=${HOME}/Library/Android/sdk/platform-tools/:$PATH
export PATH=${HOME}/tools/flutter/bin:$PATH

export PS1="\W$ "

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

# Add COLUMNS and LINES env vars to docker exec and kubectl commands
docker() {
   if [ "$1" = "exec" ]; then
       /usr/local/bin/docker exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" ${@:2}
   else
       /usr/local/bin/docker "$@";
   fi
}
#kubectl() {
#   if [ "$1" = "exec" ]; then
#       /Users/danny/google-cloud-sdk/bin/kubectl exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" ${@:2}
#   else
#       /Users/danny/google-cloud-sdk/bin/kubectl "$@";
#   fi
#}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/danny/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/danny/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/danny/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/danny/google-cloud-sdk/completion.bash.inc'
fi


# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"
