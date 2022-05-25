from os import system, getcwd, chdir
from sys import exit
import sys

while True:
    try:
        cwd = getcwd()
        pyshellI = input(f"pyshell {cwd}> ")
        if "cd" in pyshellI:
            chdir(f"{pyshellI.split()[1]}")
        elif "logout" in pyshellI: 
            exit()
        elif pyshellI == "cls":
            system("clear")
        elif pyshellI == "update":
            system("curl -sL https://raw.githubusercontent.com/micziz/pyshell/main/install.sh | sh")
        else:
            system(pyshellI)
    except KeyboardInterrupt:
        exit()
    except:
        print("There was an error. Please try again.")