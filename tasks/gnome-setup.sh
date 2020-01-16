if [ -n "$SUPERUSER" ]; then

    # root
    apt update
    apt install -y \
        vim \
        git \
        tig \
        make \
        sudo \
        rsync \
        locales \
        tzdata \
        bash-completion \
        supervisor

    provision/shell/debian/sudo.sh
    provision/shell/debian/gnome-minimal.sh

    # gnome config
    dconf load /org/gnome/ < provision/shell/debian/gnome-backup

    # dotfiles
    if [ -e dotfiles ]; then
        find dotfiles/ -type f | awk '! /^\.git$/' | sudo -u ${SUPERUSER} xargs -I DOTFILE cp DOTFILE /home/${SUPERUSER}/
    fi

else
    echo 'Set $SUPERUSER and execute. `SUPERUSER=username ./gnome-setup.sh`'
fi
