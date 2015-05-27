#!/usr/bin/env bash

SCRIPTS_PATH="/usr/local/bin"
SCRIPT_PREFIX="site_shutdown-"
SCRIPT_SUFFIX=".sh"

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

if [ -f "${SCRIPTS_PATH}/${SCRIPT_PREFIX}${1}${SCRIPT_SUFFIX}" ]; then
    ${SCRIPTS_PATH}/${SCRIPT_PREFIX}${1}${SCRIPT_SUFFIX}
else
    die "Script for $1 not found!"
fi

