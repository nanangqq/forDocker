if [ "$#" -lt 1 ]; then
    echo "node 11.x will be installed(default)"
    echo "to change version, source ./node-install-v11.sh [main version number]"
else
    echo "node $1.x will be installed"
fi

v=$1

apt install -y curl
curl -sL https://deb.nodesource.com/setup_$v.x | bash -
apt-get install -y nodejs
