# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

source $HOME/Tidelift/infra/tidelift.sh

alias pgadmin4_start="docker run --net=host --env PGADMIN_DEFAULT_EMAIL=madeline@tidelift.com --env PGADMIN_DEFAULT_PASSWORD=password --name pgadmin4 -d dpage/pgadmin4"
alias pgadmin4_stop="docker stop pgadmin4 && docker rm pgadmin4"

hash -d -- fed=/Users/madeline/Tidelift/frontend
hash -d -- dci=/Users/madeline/Tidelift/dependencyci
hash -d -- lio=/Users/madeline/Tidelift/libraries.io

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES 
export CONTAINERS_MACHINE_PROVIDER=applehv
