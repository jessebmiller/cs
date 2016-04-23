from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update \
 && apt-get install -y curl git zsh \
 && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
 && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
 && chsh -s /bin/zsh \
 && git config --global user.name "Jesse B. Miller" \
 && git config --global user.email jesse@jessebmiller.com

env SHELL=/bin/zsh

copy zshrc /root/.zshrc

entrypoint ["zsh"]