#!/bin/sh

ZDOTDIR=/root/.config/jesse/jsh
ZSHRC_REMOTE=https://raw.githubusercontent.com/jessebmiller/shell/master/zshrc

# If we don't have the zshrc file locally, get it and put it in the z dot dir.
wget --no-clobber $ZSHRC_REMOTE -O $ZDOTDIR/zshrc

docker run -it --rm \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v $HOME:$HOME \
       -v $HOME/.ssh:/root/.ssh \
       -v $HOME/csconfig:/root/.config \
       # this is awkward, find a beter way to start in the home folder
       -e DATA=$HOME \
       # Tell the container where to look for zshrc
       -e ZDOTDIR=$ZDOTDIR \
       --net=host \
       --detach-keys="ctrl-@" \
       jesse/shell

