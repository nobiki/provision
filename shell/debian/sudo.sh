if [ -n "$SUPERUSER" ]; then
    apt update
    apt install -y sudo

    echo ${SUPERUSER}' ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/${SUPERUSER}
else
    echo 'Set $SUPERUSER and execute. `SUPERUSER=xxxx ./sudo.sh`'
fi
