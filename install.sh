#!/bin/bash
# vim: noai:ts=4:sw=4:expandtab
# script: install neovim with Spacevim
# author: Wedsley Fernando Da Silva Milouchine  - <https://github.com/WedsleyFernando>
# version: 1.0.0
# license: GNU GPLv3

version="${0##*/} version 1.0.0"

[[ $(echo $LANG | cut -c 1-2) == "pt" ]] && _MSG="Não use 'sudo' e nem 'root'" || _MSG="Do not use 'sudo' or 'root'"
[[ $(id -u) -eq 0 ]] && echo ${_MSG} && exit 1

CURRENT_DIR=$(pwd)

shopt -s extglob


_start(){
cat <<EOF

__        __ __     ___           
\ \      / / \ \   / (_)_ __ ___  
 \ \ /\ / /   \ \ / /| | '_ ' _ \ 
  \ V  V /     \ V / | | | | | | |
   \_/\_/       \_/  |_|_| |_| |_|

EOF
}

usage() {
_start
cat <<EOF
usage: ${0##*/} [flags]
  Options:
    --install,          -i  Install W Vim
    --version,          -v  Show version
    --help,             -h  Show this is message
    --dependencys,      -d  Show dependencys 

* Wedsley Fernando Da Silva Milouchine  - <https://github.com/WedsleyFernando> - W VIM 1.0.0
EOF
}

_start
dependencys_show() {
cat <<EOF
dependencys: ${0##*/} 
    wget, curl, snv, git, xclip (to clipboard in vim)

* Wedsley Fernando Da Silva Milouchine  - <https://github.com/WedsleyFernando> - W VIM 1.0.0
EOF
}


if [[ -z $1 || $1 = @(-h|--help) ]]; then
    usage
    exit $(( $# ? 0 : 1 ))
fi

_install_latest_nvim(){
    case "$(uname -o)" in
      Darwin)
        filename=nvim-macos.tar.gz
        filename2=nvim-macos
        ;;
      GNU/Linux)
        filename=nvim-linux64.tar.gz
        filename2=nvim-linux64
        ;;
      *)
        die "Unsupported OS!"
        ;;
    esac

    $(wget https://github.com/neovim/neovim/releases/download/nightly/$filename -O - | tar -xz )
    $(echo sudo mv $CURRENT_DIR/$filename2 /opt)
    $(echo sudo ln -s /opt/$filename2/bin/nvim /usr/bin/nvim)
}

_git_svn_packs(){
    [[ ! -d "${HOME}/.local/share/fonts" ]] && mkdir -p "${HOME}/.local/share/fonts"
    svn export https://github.com/terroo/fonts/trunk/fonts
    mv fonts ${HOME}/.local/share/fonts/
    fc-cache -fv
}

_cfg(){
    curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim
    $(echo mv ~/.SpaceVim.d  ~/.SpaceVim.d_old_old)
    $(echo mv ~/.SpaceVim  ~/.SpaceVim_old_old)
    $(echo cp -r $CURRENT_DIR/Configs/SpaceVim ~/.SpaceVim)
    $(echo cp -r $CURRENT_DIR/Configs/SpaceVim.d ~/.SpaceVim.d)
}
_ok(){
    clear

    echo "INSTALLATION FINISHED!"
    echo "Now open and close your \"nvim\" to install packeges"
}

_install(){
    _start
    _install_latest_nvim
    _git_svn_packs
    _cfg
    _ok
    exit 0
}

while [[ "$1" ]]; do
    case "$1" in
        "--install"|"-i") _install ;;
        "--help"|"-h") usage ;;
        "--version"|"-v") printf "%s\n" "$version" && exit 0 ;;
        "--dependencys"|"-d") dependencys_show ;;
        *) echo 'Invalid option.' && usage && exit 1 ;;
    esac
    shift
done
