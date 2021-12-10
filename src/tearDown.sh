#!/usr/bin/env bash
#
# DEV sandbox tearDown
#

my_dir="$(dirname "$0")"
source "$my_dir/common-util.sh"
source "$my_dir/config.sh"

setup_colors

msg "${GREEN} \"TEARING DOWN DEV SANBOX SETUP STARTED\" ${NOFORMAT}"
msg "------------------------------------------------------------\n"

msg "UNINSTALLING \"BREW\" ${NOFORMAT}"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
msg "------------------------------------------------------------\n"

msg "${GREEN} \"TEARING DOWN DEV SANBOX SETUP FINISHED\" ${NOFORMAT}"