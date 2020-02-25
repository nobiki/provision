echo "Linuxで仮想化がサポートされているかどうかを確認します。このスクリプトの出力が空でないことを確認します"
grep -E --color 'vmx|svm' /proc/cpuinfo

