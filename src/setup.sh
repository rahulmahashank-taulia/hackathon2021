#!/usr/bin/env bash
#
# DEV sandbox setup
#

my_dir="$(dirname "$0")"
source "$my_dir/common-util.sh"
source "$my_dir/config.sh"

setup_colors

msg "${GREEN} \"STARTING DEV SANBOX SETUP\" ${NOFORMAT}"

if test ! $(which brew); then
    msg "INSTALLING \"BREW\" ${NOFORMAT}"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   msg "------------------------------------------------------------\n"
fi

msg "${GREEN} RUNNING \"BREW UPDATE\" ${NOFORMAT}"
brew update
msg "------------------------------------------------------------\n"

# Install xcode only if it is MacOS
if [ "$(uname)" == "Darwin" ]; then
   msg "${GREEN} INSTALLING\"XCODE\" ${NOFORMAT}"
   xcode-select --install
   msg "------------------------------------------------------------\n"
fi

msg "${GREEN} INSTALLING \"BREW CASK\" ${NOFORMAT}"
brew tap homebrew/cask
msg "------------------------------------------------------------\n"

msg "${GREEN} INSTALLING BREW PACKAGES \"${BREW_PACKAGES[*]^^}\" ${NOFORMAT}"
brew install ${BREW_PACKAGES[@]}
msg "------------------------------------------------------------\n"

msg "${GREEN} INSTALLING \"SDKMAN\" ${NOFORMAT}"
curl -s http://get.sdkman.io | bash

source "/home/rahul/.sdkman/bin/sdkman-init.sh"
msg "------------------------------------------------------------\n"

for SDK_PACKAGE in "${SDK_PACKAGES[@]}"
do
msg "${GREEN} INSTALLING SDK PACKAGE \"${SDK_PACKAGE}\" ${NOFORMAT}"
sdk install ${SDK_PACKAGE}
msg "------------------------------------------------------------\n"

done

msg "${GREEN} \"INSTALLATION SUCCESSFUL. HAPPY CODING :)\" ${NOFORMAT}"