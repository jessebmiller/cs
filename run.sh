#!/bin/sh

ZSHRC_LOCAL=$HOME/csconfig/jesse/shell/zshrc
#ZSHRC_REMOTE=https://raw.githubusercontent.com/jessebmiller/shell/master/zshrc

# If we don't have the zshrc file locally, get it and put it in the z dot dir.
#wget --no-clobber $ZSHRC_REMOTE -O $ZSHRC_LOCAL

docker run -it --rm \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v $HOME:$HOME \
       -v $HOME/.ssh:/root/.ssh \
       -v $HOME/csconfig:/root/.config \
       -v $ZSHRC_LOCAL:/root/.zshrc \
       -e DATA=$HOME \
       --net=host \
       --detach-keys="ctrl-@" \
       -it \
       jesse/shell


