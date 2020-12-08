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

SNAPS=(
    authy
)

info 'Install snaps'

sudo snap install --beta ${SNAPS[@]}
sudo snap resfresh
