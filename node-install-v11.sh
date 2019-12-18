if [ "$#" -lt 1 ]; then
    echo "node 11.x will be installed(default)"
    echo "to change version, source ./node-install-v11.sh [main version number]"
    v="11"
else
    echo "node $1.x will be installed"
    v=$1
fi



apt install -y curl
curl -sL https://deb.nodesource.com/setup_$v.x | bash -
apt-get install -y nodejs
