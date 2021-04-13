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

COLOR='\033[0;32m'
NC='\033[0;0m'

shopt -s extglob


_start(){
echo -e "$COLOR"
cat <<EOF
==============================================================================
==                                                                          ==
==                   __        __ __     ___                                ==
==                   \ \      / / \ \   / (_)_ __ ___                       ==
==                    \ \ /\ / /   \ \ / /| | '_ ' _ \                      ==
==                     \ V  V /     \ V / | | | | | | |                     ==
==                      \_/\_/       \_/  |_|_| |_| |_|                     ==
==                                                                          ==
==============================================================================
EOF
echo -e "$NC"
}

usage() {
_start
cat <<EOF
usage: ${0##*/} [flags]
  Options:
    --install,          -i  Install W Vim
    --version,          -v  Show version
    --help,             -h  Show this is message
    --dependencies,     -d  Show dependencies 

* Wedsley Fernando Da Silva Milouchine  - <https://github.com/WedsleyFernando> - W VIM 1.0.0
EOF
}

dependencies_show() {
cat <<EOF
dependencies: ${0##*/} 
    wget, curl, svn (subversion), git, xclip (to clipboard in vim)

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

    echo -e "$COLOR [*] Instaling Neovim lastest version ... $NC"
    $(wget https://github.com/neovim/neovim/releases/download/nightly/$filename -q --show-progress -O - | tar -xz )
    $(echo sudo mv $CURRENT_DIR/$filename2 /opt)
    $(echo sudo ln -s /opt/$filename2/bin/nvim /usr/bin/nvim)
}

_git_svn_packs(){
    echo -e "$COLOR [*] Instaling fonts ... $NC"
    [[ ! -d "${HOME}/.local/share/fonts" ]] && mkdir -p "${HOME}/.local/share/fonts"
    svn export https://github.com/terroo/fonts/trunk/fonts 2>&1 
    mv fonts ${HOME}/.local/share/fonts/ 2>&1
    fc-cache -fv 1> /dev/null 2>&1
}

_cfg(){
    echo -e "$COLOR [*] Configuring your vim ... $NC"
    curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim > /dev/null 2>&1
    cp -r $CURRENT_DIR/Configs/SpaceVim ~/
    cp -r $CURRENT_DIR/Configs/SpaceVim.d ~/
}
_ok(){
    clear
    _start
    echo -e "$COLOR=============================================================================="
    echo -e "$COLOR==                        INSTALLATION FINISHED!                            =="
    echo -e "$COLOR=============================================================================="
    echo -e "$COLOR=============================================================================="
    echo -e "$COLOR==      Open you Neovim and it will install the plugins automatically       =="
    echo -e "$COLOR==============================================================================$NC"
    

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
        "--dependencies"|"-d") dependencies_show ;;
        *) echo 'Invalid option.' && usage && exit 1 ;;
    esac
    shift
done
