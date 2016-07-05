# note that this is to illustrate the steps to make clojure and vim work and
# is not about best practices in docker

from debian

run apt-get update
run apt-get install -y vim-nox tmux curl git tig default-jdk

workdir /root
# this contains the lein profile, the vimrc
add home /root

# install lein
workdir /root/bin
env LEIN_ROOT=1
run curl -LSso lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
run chmod 755 lein
run ./lein

# install pathogen and all the bundles
run curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
workdir /root/.vim/bundle
run git clone https://github.com/guns/vim-sexp.git
run git clone https://github.com/guns/vim-slamhound
run git clone https://github.com/kovisoft/paredit.git
run git clone https://github.com/tpope/vim-dispatch.git
run git clone https://github.com/tpope/vim-fireplace.git
run git clone https://github.com/tpope/vim-projectionist.git
run git clone https://github.com/tpope/vim-salve.git
run git clone https://github.com/tpope/vim-sexp-mappings-for-regular-people.git
run git clone https://github.com/venantius/vim-cljfmt.git

workdir /root/src
