if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ command -v python3 >/dev/null 2>&1 ]; then
        echo "Python3 is not installed"
        echo "Python3 is required to run pyshell"
        exit 1
    fi  
    if [ command -v pip3 >/dev/null 2>&1 ]; then
        echo "pip3 is not installed"
        echo "pip3 is required to run pyshell"
        exit 1
    fi
else
    if [ command -v python >/dev/null 2>&1 ]; then
        echo "Python is not installed"
        echo "Python is required to run pyshell"
        exit 1
    fi
    if [ command -v pip >/dev/null 2>&1 ]; then
        echo "pip is not installed"
        echo "pip is required to run pyshell"
        exit 1
    fi
fi

if [ command -v curl >/dev/null 2>&1 ]; then
    echo "curl is not installed"
    echo "curl is required to install pyscript run pyshell"
    exit 1
fi

echo "Installing pyshell"
curl -sl https://raw.githubusercontent.com/micziz/pyshell/main/src/pyshell.py -o pyshell.py
echo "Pyshell installed"
echo "Copy this command into your ./bashrc or ./bash_prfile or ./zshrc"
echo "alias pyshell='python3 $HOME/pyshell.py'"

