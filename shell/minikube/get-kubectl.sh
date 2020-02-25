curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
  && chmod +x kubectl \
  && sudo mkdir -p /usr/local/bin/ \
  && sudo mv kubectl /usr/local/bin/
