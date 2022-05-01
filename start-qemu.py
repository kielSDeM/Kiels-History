#!/bin/python3
import os

check_qemu = os.system('/bin/qemu-system-x86_64 --version')
class Main:
    if check_qemu is None:
        print("Going to install qemu")
        os.system('python3 /home/zero/qemu-scripts/py_qemu/main.py')
    else:
        print("qemu is already installed")

    linux_os = input("Please select a machine to start Arch: 1 Kali: 2  LXLE: 3 Exit: 4 \n")

    while linux_os != "1" or linux_os != "2" or linux_os != "3":
        if linux_os == "1":
            print("starting arch")
            os.system("./arch-qemu.bash")
            break
        elif linux_os == "2":
            print("starting kali")
            os.system("./kali-qemu.bash")
            break
        elif linux_os == "3":
            print("starting ubuntu")
            os.system("./lxle-qemu.bash")
            break
        elif linux_os == "4":
            print("exiting the program")
            os.system("exit")
            break
        else:
            print("please use a valid input")
            continue
if __name__ == "__main__":
    Main()



