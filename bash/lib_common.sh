#!/bin/bash

# enable when debug
#set -x

# quit when any error happens
set -e
# quit when use undefined variable
set -u
# quit when error happens in pipe
set -o pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

readonly ABSPath=$(cd $(dirname $0); pwd)

usage()
{
    cat <<EOF
EOF
}

log()
{
    echo "[$(date +'%F %T')] $@"
}

err()
{
    log "$@"
    exit 1
}

main() {
    echo $ABSPath
}

main "$@"
