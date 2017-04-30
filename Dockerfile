from alpine

run apk add --no-cache --update ca-certificates && update-ca-certificates
run apk add --no-cache --update openssl zsh git docker
run git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh

run apk del git openssl ca-certificates

env SHELL=/bin/zsh
env HISTFILE=/root/.config/zsh/zsh_history
env ZDOTDIR=/root/.config/jsh

entrypoint /bin/zsh