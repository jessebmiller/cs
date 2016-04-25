from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update \
 && apt-get install -y curl git zsh
run git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
run chsh -s /bin/zsh
run git config --global user.name "Jesse B. Miller"
run git config --global user.email jesse@jessebmiller.com

env SHELL=/bin/zsh
env HISTFILE=/root/.config/zsh/zsh_history

copy zshrc /root/.zshrc

entrypoint ["zsh"]