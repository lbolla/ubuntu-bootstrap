debug 'Upgrade'
sudo apt update 
sudo apt upgrade 

info 'Install packages'

PACKAGES=(
    apt-file
    curl
    gcc
    git
    htop
    httpie
    iftop
    make
    net-tools
    nmap
    openssh-server
    pass
    pkg-config
    stow
    tmux
    virtualenvwrapper
    zsh
)

debug 'Install'
sudo apt install --yes ${PACKAGES[@]}

debug 'Autoremove'
sudo apt autoremove --yes

source bootstrap.d/fzf.sh
source bootstrap.d/git.sh
source bootstrap.d/rclone.sh
source bootstrap.d/restic.sh
source bootstrap.d/rg.sh
