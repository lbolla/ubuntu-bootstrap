info 'Install restic'

# See https://github.com/restic/restic/releases/

RESTIC_EXEC='/usr/local/bin/restic'
if [ ! -x ${RESTIC_EXEC} ]; then

    VERSION=0.11.0
    NAME=restic_${VERSION}_linux_amd64
    PKG=${NAME}.bz2
    curl -L https://github.com/restic/restic/releases/download/v${VERSION}/${PKG} -o /tmp/${PKG}
    bunzip2 /tmp/${PKG}
    chmod +x /tmp/${NAME}
    sudo mv /tmp/${NAME} /usr/local/bin/restic

    sudo restic generate --zsh-completion /usr/share/zsh/vendor-completions/_restic
    sudo restic generate --man /usr/local/share/man/man1

fi

