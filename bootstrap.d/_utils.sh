RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NOCOLOR='\033[0m'

function _log {
    local color=$1
    local level=$2
    shift 2
    printf "${color}---> $(date '+%Y/%m/%dT%H:%M:%S') ${level} $@${NOCOLOR}\n"
}

function debug {
    _log ${CYAN} D $@
}

function info {
    _log ${GREEN} I $@
}

function warn {
    _log ${YELLOW} W $@
}

function error {
    _log ${RED} E $@
}

function die {
    error $@
    exit 1
}
