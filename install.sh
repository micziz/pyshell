if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ command -v python3 >/dev/null 2>&1 ]; then
        echo "Python3 is not installed"
        echo "Python3 is required to run pyshell"
        exit 1
    fi  
else
    if [ command -v python >/dev/null 2>&1 ]; then
        echo "Python is not installed"
        echo "Python is required to run pyshell"
        exit 1
    fi
fi

if [ command -v curl >/dev/null 2>&1 ]; then
    echo "curl is not installed"
    echo "curl is required to install pyscript run pyshell"
    exit 1
fi

curl -sl https://raw.githubusercontent.com/micziz/pyshell/main/pyshell.py -o pyshell.py

echo "pyshell is installed"
echo "run pyshell with python3 pyshell.py"


