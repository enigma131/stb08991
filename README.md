# stb08991

This module source will create a new Linux kernel demodulator module for test

Total changes from Linux sources are in separate file [ListOfChanges](ListOfChanges). 

To compile the driver, you need to have make, compiler and kernel headers installed. This module is based on kernel module replacing and is linked to others media sources of kernel, so you need first to [install](KernelInstall.md) closest kernel source for your distribtion.

Next, get the repository to local:

    git clone https://github.com/enigma131/stb08991.git

If different kernel, you have to adjust the right path for KERNSRC and KERNELSOURCE in Makefile:

    nano stb08991/Makefile 

If changes made, save the file then exit nano.

Initialize the DKMS structure:

    sudo dkms add ./stb08991

Compile source / Install DKMS:

    sudo dkms install stb0899/enigma13

Verify result :

    sudo dkms status

    sudo modinfo stb0899

Reboot and test
