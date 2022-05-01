class Qemu_Installer:
    def __init__(self):
        self.install_list = []
    def __repr__(self):
        return self.install_list
    def qemu_lib(self):
        command =['sudo apt-get install ninja-build -y',
                  'sudo apt-get install libglib2.0-dev -y; sudo apt-get install libpixman-1-dev -y',
                  'sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev',
                  'sudo apt-get install libusb-1.0-0-dev']

        return command
    
    def qemu_install(self):
        command = ['wget https://download.qemu.org/qemu-6.2.0.tar.xz', 
                   'tar xvJf qemu-6.2.0.tar.xz', 'cd qemu-6.2.0', 
                   './configure --enable-spice --enable-libusb',
                   'make && make install']

        return command
    def qemu():
        all = self.install_list
        all.append(qemu_lib())
        all.append(qemu_install())

        return all
        




