from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update \
 && apt-get install -y curl git zsh \
 && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
 && chsh -s /bin/zsh

env SHELL=/bin/zsh
env HISTFILE=/root/.config/zsh/zsh_history

copy zshrc /root/.zshrc

entrypoint ["zsh"]