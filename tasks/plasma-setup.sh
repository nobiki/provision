if [ -n "$SUPERUSER" ]; then

    # root
    apt update
    apt install -y \
        vim \
        git \
        make \
        sudo \
        rsync \
        locales \
        tzdata \
        bash-completion \
        supervisor

    provision/shell/debian/sudo.sh
    provision/shell/debian/plasma-minimal.sh

    # plasma config
    sudo -u ${SUPERUSER} rsync -avz provision/shell/debian/plasma_config/ /home/${SUPERUSER}/.config/

    # dotfiles
    if [ -e dotfiles ]; then
        find dotfiles/ -type f | awk '! /^\.git$/' | sudo -u ${SUPERUSER} xargs -I DOTFILE cp DOTFILE /home/${SUPERUSER}/
    fi

else
    echo 'Set $SUPERUSER and execute. `SUPERUSER=username ./plasma-setup.sh`'
fi
