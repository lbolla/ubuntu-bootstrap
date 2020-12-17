source bootstrap.d/aws.sh
source bootstrap.d/emacs.sh
source bootstrap.d/fzf.sh
source bootstrap.d/git.sh
source bootstrap.d/passff-host.sh
source bootstrap.d/rclone.sh
source bootstrap.d/restic.sh
source bootstrap.d/rg.sh
source bootstrap.d/vcs-resolve.sh

case "$(hostname)" in
    "jiren")
        source bootstrap.d/protonvpn.sh
        ;;
esac
