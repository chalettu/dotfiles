#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

echo "Testing Dotfiles installation"
. scripts/utils.sh
. scripts/packages.sh

# curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
main() {
  info "Installing ..."
  install_packages
}
main