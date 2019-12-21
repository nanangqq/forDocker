if [ "$#" -lt 1 ]; then
    echo "python3.6 virtualenv(name: test) will be made and activated(default)"
    echo "to change setting, source ./python-venv.sh [version-number: 3.6, 3.7, 3.8] [name]"
    
    apt install -y python3 python3-venv
    python3 -m venv /test
    source /test/bin/activate
else
    echo "python$1 virtualenv(name: $2) will be made and activated"

    apt install -y python$1 python$1-venv python3-venv
    python$1 -m venv /$2
    source /$2/bin/activate
fi

