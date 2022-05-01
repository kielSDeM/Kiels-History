import os
from qemu_install import Qemu_Installer

class Main:
    qemu_prep = Qemu_Installer()
    installer = []
    installer.extend(qemu_prep.qemu())

    for i in installer:
        os.system(i)
        break
    
if __name__ == "__main__":
    Main()