from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update \
 && apt-get install -y curl git zsh docker \
 && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
 && chsh -s /bin/zsh

run curl https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz |     tar xvz
run mv /docker/docker /bin/docker
run rm -rf /docker

env SHELL=/bin/zsh
env HISTFILE=/root/.config/zsh/zsh_history

copy zshrc /root/.zshrc

entrypoint ["zsh"]