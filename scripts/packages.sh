
packages=(
  bat                      #  https://github.com/sharkdp/bat
  # bottom                   #  https://github.com/ClementTsang/bottom
  # cmake
  # ctags
  curl
  dust                     #  https://github.com/bootandy/dust
  exa                      #  https://github.com/ogham/exa
  # fzf                      #  https://github.com/junegunn/fzf
  # fd                       #  https://github.com/sharkdp/fd
  # gettext
  # git-delta                #  https://github.com/dandavison/delta
  # gpg
  # go
  # grpcurl                  #  https://github.com/fullstorydev/grpcurl
  # httpie                   #  https://github.com/httpie/httpie
  # imagemagick
  jq
  # k9s                      #  https://github.com/derailed/k9s
  # kubernetes-cli
  # hyperfine                #  https://github.com/sharkdp/hyperfine
  # lazydocker               #  https://github.com/jesseduffield/lazydocker
  # lf                       #  https://github.com/gokcehan/lf
  # libpq
  # mas                      #  https://github.com/mas-cli/mas
  # minikube
  # neovim
  # node
  # nmap
  # openjdk
  # openssl
  # pinentry-mac
  # postgresql
  # procs                    #  https://github.com/dalance/procs/
  # python3
  # protobuf
  # ripgrep                  #  https://github.com/BurntSushi/ripgrep
  # rustup
  # shellcheck
  # stow
  # telnet
  # usql                     #  https://github.com/xo/usql
  # websocat                 #  https://github.com/vi/websocat
  # yarn
  # wget
  zsh
  zsh-autosuggestions
  zsh-syntax-highlighting
  zoxide                   #  https://github.com/ajeetdsouza/zoxide
)

install_packages() {
  local formulas=$*
  for formula in $formulas; do
    echo $formula
    # if brew list --formula | grep "$formula" > /dev/null; then
    #   warn "Formula $formula is already installed"
    # else
    #   info "Installing package < $formula >"
    #   brew install "$formula"
    # fi
  done
  #info "Configuring taps"
  # apply_brew_taps "${taps[@]}"
# Install asdf
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
# Install Taskfile 
 sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d
  info "Installing packages..."
# Install zoxide
  curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

  # install_brew_formulas "${packages[@]}"

  # info "Cleaning up brew packages..."
  # brew cleanup
}

# post_install_packages() {
#   info "Installing fzf bindings"
#   # shellcheck disable=SC2046
#   $(brew --prefix)/opt/fzf/install
# }