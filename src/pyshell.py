from os import system, getcwd, chdir
from sys import exit

while True:
    try:
        cwd = getcwd()
        pyshellI = input(f"pyshell {cwd}> ")
        if "cd" in pyshellI:
            chdir(f"{pyshellI.split()[1]}")
        elif "logout" in pyshellI: 
            system("$SHELL")
        else:
            system(pyshellI)
    except KeyboardInterrupt:
        exit()
    except:
        print("There was an error. Please try again.")