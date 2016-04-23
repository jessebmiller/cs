# jesh (Jesse Shell)

A container for portable zsh

# Run it

    docker run -it -v $(which docker):$(which docker) -v /var/run/docker.sock:/var/run/docker.sock -v $HOME:$HOME -v $HOME/.ssh:root/.ssh -e DATA=$HOME --hostname=$HOSTNAME jesse/zsh

# Make your own

create your own zshrc, build from a Dockerfile as follows

   FROM jesse/zsh
   COPY zshrc /root/.zshrc

run as above.

# Notes

With the docker socket being mounted in, any containers created inside this zsh
container will be ~~sibling~~ containers. The volume paths will be from the host
environment's context. This is why I mount `$HOME:$HOME` so the paths inside and
outside will match.

I provide the `$DATA` environment variable as a way to use aliases that expect
to be able to mount the user's data directory (see .zshrc)
