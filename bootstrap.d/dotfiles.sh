info 'Setup dotfiles'

DOTFILES_D=$HOME/src/github.com/lbolla/dotfiles/
if [ ! -d ${DOTFILES_D} ]; then
    git clone https://github.com/lbolla/dotfiles.git ${DOTFILES_D}
fi

pushd ${DOTFILES_D}
git pull
./setup.sh
popd
