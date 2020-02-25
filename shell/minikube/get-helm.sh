export HELM_OS=linux

wget https://get.helm.sh/helm-v2.0.0-alpha.5-$HELM_OS-amd64.tar.gz \
    && tar -zxvf helm-v2.0.0-alpha.5-$HELM_OS-amd64.tar.gz

sudo cp $HELM_OS-amd64/helm /usr/local/bin/


