* BIOSの仮想化サポートが`Enabled`か確認
* `check-vmx.sh`を実行して仮想化サポートされているか確認
* `get-kubectl.sh`でkubectlインストール
* `get-kvm.sh`でKVMインストール
* ログアウトなどで `usermod`反映
* `get-minikube.sh`でminikubeインストール
* `$ minikube start --vm-driver kvm2` （※非root）
